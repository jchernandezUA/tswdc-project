Feature: Change password

@user1 @web
Scenario: Como usuario quiero cambiar contraseña
  Given I login as admin in Ghost "change_password" "01"
  When I open profile
  And I wait for 3 seconds
  When I change the password
  And I wait for 1 seconds
  Then I validate the password changed
  