Feature: Authorization test case
  Background: Basicly pre-conditions for all test cases
    When User goes to login page

  @Registering @Smoke
  Scenario: Registering a random user
    When User goes to the sign up page
    And User types in random user credentials
    And User submits the registration
    And User skips referral code screen
    And User skips verify phone number screen
    Then User sees the home screen

  @Login @SomeOtherTypeofTests
  Scenario Outline: Logging in with an existing user
    And User inputs <email> into the email field
    And User inputs <password> into the password field
    And The The user clicks on login
    Then User sees the home screen
    And My account page contains users email <email>
    And My account page contains users name <name>
    Examples:
      | email                 | password          | name        |
      | autumnskuul@gmail.com | Password123       | NameTesting |
      | tdltdl@gmail.com      | SecretPassword123 | YoloBolo    |
