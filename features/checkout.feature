Feature: Checkout feature

  Scenario: Adding items to the wishlist
    Given A new user has registered and logged in
    When User goes to categories page
    And User chooses Hair Combs category
    And User adds the first item to the wishlist
    And User navigates to wishlist from products screen
    And User refreshes the wishlist
    Then The added item is shown in the wishlist

