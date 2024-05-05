const { Given, When, Then } = require("@cucumber/cucumber");

When("I enter identification {string}", async function (email) {
  let element = await this.driver.$("#identification");
  return await element.setValue(email);
});

When("I enter password {string}", async function (password) {
  let element = await this.driver.$("#password");
  return await element.setValue(password);
});

When("I click next", async function () {
  let element = await this.driver.$("#ember5");
  return await element.click();
});

When("I enter post title {string}", async function (title) {
  let element = await this.driver.$(".gh-editor-title");
  return await element.setValue(title);
});

When("I enter post descripcion {string}", async function (desc) {
  let element = await this.driver.$(".kg-prose");
  return await element.setValue(desc);
});

When("I click post", async function () {
  let element = await this.driver.$(".gh-publish-trigger");
  return await element.click();
});