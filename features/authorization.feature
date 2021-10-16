Feature: Authorization test case

  Scenario: Registering a random user
    When User goes to the sign up page
    And User types in random user credentials
    And User submits the registration
    And User skips referral code screen
    And User skips verify phone number screen
    Then User sees the home screen