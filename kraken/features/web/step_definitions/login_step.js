const { Given, When, Then } = require('@cucumber/cucumber');
const properties = require('../../properties.json')
const LoginPageObject = require('../support/LoginPageObject')


Given('I login as admin in Ghost', async function() {
    let pageObject = new LoginPageObject(this.driver)
    await pageObject.goToSignIn()
    await pageObject.setEmail(properties['<JOSE_MAIL>'])
    await pageObject.setPassword(properties['<JOSE_PASSWORD>'])
    await pageObject.signIn()
})