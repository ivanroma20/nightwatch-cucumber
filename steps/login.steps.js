
const { client } = require('nightwatch-api')

const { When, Then } = require('cucumber')

When('yo realizo login con {string} y {string}', function (email, pass) {
  let login = client.page.login()

  return login.with(email, pass)

});

Then('debo ver {string} en menú lateral del área logueada', function (username) {
  let sidebar = client.page.sidebar()

  return sidebar.expectLoggedUser(username)
});


//Entonces debo ver un mensaje de alerta "<text>"
Then('debo ver un mensaje de alerta {string} {string}', function (expectMessage, typeMessage) {
  let login = client.page.login()

  switch (typeMessage) {
    case 'info':
      login.expectAlertInfo(expectMessage)
      break;
    case 'danger':
      login.expectAlertDanger(expectMessage)
      break;
  }
});
