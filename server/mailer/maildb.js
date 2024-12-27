const fs = require('fs');

class MailDB {
     constructor() {
          this.filepath = './mailer/db.json';
          this.data = this._readDataFromFile();
     }

     _readDataFromFile() {
          try {
               const data = fs.readFileSync(this.filepath, 'utf8');
               return JSON.parse(data);
          } catch (err) {
               return {};
          }
     }

     _writeDataToFile() {
          try {
               const serializedData = JSON.stringify(this.data, (key, value) => {
                    if (typeof value === 'bigint') {
                         return value.toString();
                    }
                    return value;
               }, 2);
               fs.writeFileSync(this.filepath, serializedData);
          } catch (err) {
               console.error(err);
          }
     }

     addToEmailQueue(orderId, emailData) {
          this.data[orderId] = { email: emailData, status: 'queued', retryCount: 0 };
          this._writeDataToFile();
     }

     getQueueEntries() {
          return this.data;
     }

     updateQueueEntry(orderId, updatedData) {
          if (this.data[orderId]) {
               Object.assign(this.data[orderId], updatedData);
               this._writeDataToFile();
          }
     }

     removeFromQueue(orderId) {
          delete this.data[orderId];
          this._writeDataToFile();
     }
}

const db = new MailDB();
module.exports = db;
