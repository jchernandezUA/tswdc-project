Feature: Edit member 

  @user1 @web
  Scenario: As a user I want to new member
    # Arrange
    Given I login as admin in Ghost
    # Act
    When I click on members
    And I wait for 1 seconds
    When I click on the member that I want to edit
    When I enter edit name "miembro test editado"
    When I enter edit email "miembroeditado@test.com"
    When I edit note "esto es un texto de prueba editado"
    And I wait for 1 seconds
    When I click on save button to edit
    # Assert
    Then I click on members to validate the edit member
    Then I see the edit member "miembro test"
    Then I go to the homepage
