
function parseQueryString(queryString) {
     let params = {};
     let keyValuePairs = queryString.split('&');
     for (let pair of keyValuePairs) {
          let [key, value] = pair.split('=');
          params[key] = decodeURIComponent(value.replace(/\+/g, ' '));
     }

     return params;
}

function isAlphaNum(username) {
     var regex = /^[a-zA-Z0-9]+$/;
     if (regex.test(username)) {
          return true;
     } else {
          return false;
     }
}

(function ($) {
     // Forgot Password Handler
     $('#forgotPassForm').on('submit', function (e) {
          function fal(falid, msg) {
               $(`.fal-${falid}`).empty();
               $(`.fal-${falid}`).text(` * ${msg}`);
          }

          e.preventDefault();

          var email = $('#email-phone-forgot').val();

          $('form#forgotPassForm button').prop('disabled', true);
          $('form#forgotPassForm button').addClass('btn-loading');

          $.ajax({
               url: '../auth/forgotPass.php',
               type: 'POST',
               data: { email: email },
               success: function (res) {
                    $('form#forgotPassForm button').prop('disabled', false);
                    $('form#forgotPassForm button').removeClass('btn-loading')
                    if (res === "invalid_email") {
                         swal({
                              title: 'Error',
                              text: 'The email is not registered yet!',
                              type: 'error'
                         })
                    } else if (res.includes('success')) {
                         var email = res.split('#')[1];
                         $('form#forgotPassForm input').val("");
                         swal({
                              title: "Success",
                              text: `We have sent new temporary password to ${email}`,
                              type: 'success',
                              confirmButtonText: "Login"
                         }).then((result) => {
                              if (result.value) {
                                   window.location.href = `./login.php`
                              }
                         });
                    }
               }
          })

     })

     // User Login Handler
     $('#loginForm').on('submit', function (e) {
          function lal(lalid, msg) {
               $(`.lal-${lalid}`).empty();
               $(`.lal-${lalid}`).text(` * ${msg}`);
          }

          e.preventDefault();

          var ldata = $(this).serialize();
          var ld = parseQueryString(ldata);

          if (!ld.username)
               return lal('1', "Username field is required!");

          if (!ld.username)
               return lal('2', "Password field is required!");

          $('form#loginForm button').prop('disabled', true);
          $('form#loginForm button').addClass('btn-loading')
          $.ajax({
               url: `../auth/loginPost.php`,
               type: 'POST',
               data: ldata,
               success: function (res) {
                    $('form#loginForm button').prop('disabled', false);
                    $('form#loginForm button').removeClass('btn-loading')

                    if (res === "success") {
                         swal({
                              title: "Success",
                              text: "Your account login successfull!",
                              type: 'success',
                              confirmButtonText: "Go To Dashboard"
                         }).then((result) => {
                              if (result.value) {
                                   window.location.href = `/user/home.php`
                              }
                         });
                         setTimeout(() => {
                              window.location.href = `/user/home.php`
                         }, 600)
                    } else if (res === "invalid_pass") {
                         swal({
                              title: 'Error',
                              text: 'Please enter correct account password.',
                              type: 'error'
                         })
                    } else if (res === "invalid_username") {
                         swal({
                              title: 'Error',
                              text: 'Please enter invalid account username!',
                              type: 'error'
                         })
                    }
               }
          })
     })

     // User Register Handler
     $(`#registerForm`).on('submit', function (e) {
          function ral(ralid, msg) {
               $(`.ral-${ralid}`).empty();
               $(`.ral-${ralid}`).text(` * ${msg}`);
          }

          e.preventDefault();
          var rdata = $(this).serialize();
          var rd = parseQueryString(rdata);
          if (!rd.username)
               return ral('1', "Username is required!");

          if (rd.username.length < 5)
               return ral('1', "Minimum length 5 characters");

          if (rd.username.length > 12)
               return ral('1', "Maximum length 12 characters");

          if (!isAlphaNum(rd.username))
               return ral('1', "Username invalid!");

          if (!rd.email)
               return ral('2', "Email is required!");

          if (!rd.email.includes('@') || !rd.email.split('@')[1])
               return ral('2', 'Enter an valid email!');

          if (!rd.password)
               return ral('3', 'Password is required!');

          if (rd.password.length < 8)
               return ral('3', "Password is too short.");

          if (rd.password.length > 23)
               return ral('3', "Password is too long.");

          $('form#registerForm button').prop('disabled', true)
          $(`form#registerForm button`).addClass('btn-loading');
          $.ajax({
               url: '/auth/registerPost.php',
               type: 'post',
               method: 'post',
               data: rdata,
               success: function (res) {
                    $('form#registerForm button').prop('disabled', false)
                    $(`form#registerForm button`).removeClass('btn-loading');
                    if (res === "useremail_taken") {
                         swal({
                              title: 'Error',
                              text: 'Username or email already taken!',
                              type: 'error'
                         })
                    } else if (res.includes('success')) {
                         var dtlink = res.split('@')[1];
                         swal({
                              title: "Success",
                              text: "Continue to activate account.",
                              type: 'success',
                              confirmButtonText: "Continue"
                         }).then((result) => {
                              if (result.value) {
                                   window.location.href = `${dtlink}`
                              }
                         });
                    }
               }
          })
     })
})(jQuery);