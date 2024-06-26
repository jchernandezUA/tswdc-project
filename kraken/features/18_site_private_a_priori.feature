Feature: Make the site private a priori

  @user1 @web
  Scenario Outline: As a user I want to make the site private
    # Set up
    Given I login as admin in Ghost "site_private" "00"
    # Act
    When I click the settings icon
    And I click the site private button
    And I switch the site private
    And I set the private password to "<custom_pass>"
    And I click Save private setting button
    # Assert
    Then I go to the homepage
    And I see the text "This site is private"
    # Tear down
    Then I go to admin page
    And I click the settings icon
    And I click the site private button
    And I switch the site private
    And I click Save private setting button

    Examples:
      | custom_pass |
      | WM@29k=3rw  |
