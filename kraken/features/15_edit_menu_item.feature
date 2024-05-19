Feature: Edit menu item

  @user1 @web
  Scenario: As a user I want to edit a menu item
    # Set up
    Given I login as admin in ghost
    # Act
    When I add menu item "My new item"
    And I edit the last item to "Newer item"
    # Assert
    Then I go to the homepage
    Then I see item menu "Newer item"
    # Tear Down
    Then I go to admin page
    And I click the settings icon
    And I click the Navigation Customize button
    And I delete item menu
    And I click the Navigation Customize button OK button