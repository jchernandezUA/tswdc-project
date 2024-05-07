Feature: Add menu item

  @user1 @web
  Scenario: As a user I want to add menu items
    # Set up
    Given I login as admin in Ghost
    # Act
    When I click the settings icon
    And I wait for 1 seconds
    And I click the Navigation Customize button
    And I enter New item "My new Label"
    And I click the Navigation Customize button OK button
    # Assert
    Then I go to the homepage
    And I see item menu "My new Label"
    # Tear Down
    Then I go to admin page
    And I click the settings icon
    And I wait for 1 seconds
    And I click the Navigation Customize button
    And I delete item menu
    And I click the Navigation Customize button OK button