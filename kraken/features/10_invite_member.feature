Feature: Add new member 

  @user1 @web
  Scenario: As a user I want to new member
    # Arrange
    Given I login as admin in Ghost
    # Act
    When I click on members
    And I wait for 1 seconds
    When I click on new members button
    When I enter new name "miembro test"
    When I enter new email "miembro@test.com"
    When I add note "esto es un texto de prueba"
    And I wait for 1 seconds
    When I click on save button
    # Assert
    Then I click on members to validate the new member
    Then I I see the new member "miembro test"
    Then I go to the homepage
