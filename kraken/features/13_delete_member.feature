Feature: Delete member 

  @user1 @web
  Scenario: As a user I want to edit member
    # Arrange
    Given I login as admin in Ghost
    # Act
    When I click on member
    And I wait for 1 seconds
    When I click on the member that I want to delete
    When I click in settings of member
    And I wait for 1 seconds
    When I click in delete member
    When I click in accept delete of member
    # Assert
    Then I find the member that has been removed "miembro test".
    Then I go to the homepage

