Feature: Edit site language random

  @user1 @web
  Scenario: As a user I want to edit the site language
    # Set up
    Given I login as admin in ghost
    # Act
    When I click the settings icon
    And I click the Site language button
    And I edit the site lang to "$string_1"
    And I save the site language
    # Assert
    Then I go to the homepage
    And I see site language is "$$string_1"
    # Tear down
    Then I go to admin page
    And I click the settings icon
    And I click the Site language button
    And I edit the site language to "en"
    And I save the site language
