const { Given, When, Then } = require("@cucumber/cucumber");

When("I enter identification scheduled {string}", async function (email) {
  let element = await this.driver.$("#identification");
  return await element.setValue(email);
});

When("I enter password scheduled {string}", async function (password) {
  let element = await this.driver.$("#password");
  return await element.setValue(password);
});

When("I click next scheduled", async function () {
  let element = await this.driver.$("#ember5");
  return await element.click();
});

When("I select the post scheduled", async function () {
 
    let dropdown = await this.driver.$(
      ".gh-contentfilter-menu .ember-basic-dropdown-trigger"
    );
    await dropdown.click(); 
    let filterOptions = await this.driver.$$(".ember-power-select-option");
    for (let option of filterOptions) {
      let text = await option.getText();
      if (text.trim() === "Scheduled posts") {
        await option.click();
        break;
      }
    }
  });

  Then("I should see posts filtered by scheduled", async function () {
    let dropdown = await this.driver.$(".gh-contentfilter-menu .ember-basic-dropdown-trigger");
    let text = await dropdown.getText();
    if (!text.includes("Scheduled")) {
        throw new Error("Posts are not filtered by scheduled");
    }
});
