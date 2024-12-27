const {default: makeWASocket, DisconnectReason, downloadContentFromMessage, useSingleFileAuthState, jidDecode, areJidsSameUser, makeInMemoryStore} = require('@adiwajshing/baileys');
const {state} = useSingleFileAuthState('./session.json');
const pino = require('pino');
const store = makeInMemoryStore({logger: pino().child({level: 'silent', stream: 'store'})});

const fs = require('fs');
const query = require('samp-query');
const nodemailer = require('nodemailer');
const schedule = require('node-schedule');

require('dotenv').config();

// Request
const exp = require('express');
const app = new exp();
const bodyParser = require('body-parser');

app.use(
	bodyParser.urlencoded({
		extended: true,
	})
);
app.use(bodyParser.json());

const port = 2800;
app.listen(port, () => {
	console.log(`App Listening to ${port}`);
});

// Error Handler
function writeToErrorLog(error) {
	const logMessage = `${new Date().toISOString()} - ${error.stack}\n`;
	fs.appendFile('err.log', logMessage, err => {
		if (err) {
			console.error('Failed While Writing an Error:', err);
		}
	});
}

const connectToWhatsApp = () => {
	const client = makeWASocket({logger: pino({level: 'silent'}), printQRInTerminal: true, auth: state, browser: ['Samp Web Server', 'Dekstop', '3.0']});
	store.bind(client.ev);
	client.ev.on('connection.update', async update => {
		const {connection, lastDisconnect} = update;
		if (connection === 'close') {
			lastDisconnect.error?.output?.statusCode !== DisconnectReason.loggedOut ? connectToWhatsApp() : '';
		} else if (connection === 'open') {
			console.log('Whatsapp client is Active!');

			app.post('/api/send-whatsapp', async (req, res) => {
				try {
					const {number, message} = req.body;

					if (!number || !message) {
						return res.status(400).json({
							error: 'Number and message are required fields.',
						});
					}

					const formattedNumber = number.includes('@c.us') ? number : `${number}@c.us`;
					await client.sendMessage(formattedNumber, {text: message});
					await console.log(`[WhatsApp]: Sent to ${formattedNumber};`);
					return res.status(200).json({
						success: true,
						message: 'Message sent successfully.',
					});
				} catch (error) {
					console.error('Error:', error);
					return res.status(500).json({
						error: 'Internal server error.',
					});
				}
			});

			await client.sendMessage(`6285819478911@c.us`, {text: `Whattsapp Client is online!`});
			process.on(`exit`, async code => {
				await client.sendMessage(`6285819478911@c.us`, {text: `Whattsapp Client is turned off!: ${code}`});
			});
		}
	});
};

connectToWhatsApp();

const db = require('./mailer/maildb');
const transporter = nodemailer.createTransport({
	service: 'Gmail',
	auth: {
		user: process.env.EMailSender,
		pass: process.env.EMailPassApp,
	},
});

app.post('/api/send-email', (req, res) => {
	const {skey, to, subject, text, html, from} = req.body;
	const orderId = generateOrderId();
	const client = `, ` + (from ? from : '');

	// if (skey !== "aghd-sahk-roqc-fawp" || !skey)
	//   return res.json({ message: 'Invalid security key' });

	const mailOptions = {
		from: process.env.EMailSender,
		to: to,
		subject: subject,
		text: text || '',
		html: html || '',
	};

	db.addToEmailQueue(orderId, mailOptions);
	console.log(' ');
	console.log(`[Mailer]: Received request from ${req.ip}` + client);

	res.json({message: 'Email added to queue with order id ' + orderId});
});

function generateOrderId() {
	return Date.now().toString();
}

async function handleSuccessfulEmailSent(orderId) {
	db.removeFromQueue(orderId);
}

const emailQueueScheduler = schedule.scheduleJob('*/5 * * * * *', async function () {
	const queueEntries = db.getQueueEntries();

	for (const orderId in queueEntries) {
		const queueEntry = queueEntries[orderId];

		if (queueEntry.status === 'queued' && queueEntry.retryCount < 3) {
			const mailOptions = queueEntry.email;
			await sendEmail(mailOptions, orderId);
			queueEntry.retryCount++;
			db.updateQueueEntry(orderId, queueEntry);
		} else {
			db.removeFromQueue(orderId);
		}
	}
});

async function sendEmail(mailOptions, orderId) {
	try {
		const info = await transporter.sendMail(mailOptions);
		// console.log("Sent: " + info.response);
		console.log(' ');
		console.log('[Mailer]: Sent email to ' + mailOptions.to);
		handleSuccessfulEmailSent(orderId);
		return info;
	} catch (error) {
		console.log(error);
		throw error;
	}
}

app.use((req, res, next) => {
	res.header('Access-Control-Allow-Origin', '*');
	res.header('Access-Control-Allow-Methods', 'GET, PUT, POST, DELETE');
	res.header('Access-Control-Allow-Headers', 'Content-Type');
	next();
});

app.get('/api/samp-query/:host/:port', (req, res) => {
	try {
		const options = {
			host: req.params.host,
			port: req.params.port || 7777,
		};
		query(options, (err, ress) => {
			if (err) {
				const data_offline = {
					status: 'Offline',
					address: options.host,
					hostname: 'undefined',
					gamemode: '',
					mapname: '',
					passworded: false,
					maxplayers: 100,
					online: 0,
					rules: {
						lagcomp: true,
						mapname: 'San Andreas',
						version: '0.3.7-R2',
						weather: 10,
						weburl: 'www.sa-mp.com',
						worldtime: '12:00',
					},
					players: [],
				};
				res.json(data_offline);
			} else {
				ress.status = 'Online';
				res.json(ress);
			}
		});
	} catch (errors) {
		writeToErrorLog(errors);
	}
});
