Given(/^A new user has registered and logged in$/) do
  steps %{
    And User goes to login page
    And User goes to the sign up page
    And User types in random user credentials
    And User submits the registration
    And User skips referral code screen
    And User skips verify phone number screen
    And User sees the home screen
  }
end

When(/^User goes to categories page$/) do
  @screens.main_screen.open_category_page
end

And(/^User chooses (.*?) category$/) do |category|
  @screens.product_screen.open_chosen_category(category)
end

And(/^User adds the first item to the wishlist$/) do
  @screens.product_screen.add_first_item_to_wishlist
end

And(/^User navigates to wishlist from products screen$/) do
  @screens.product_screen.click_back_button
  @screens.main_screen.open_wishlist_page
end

And(/^User refreshes the wishlist$/) do
  @screens.main_screen.open_wishlist_page
  @screens.product_screen.refresh_wishlist
end

Then(/^The added item is shown in the wishlist$/) do
  @screens.product_screen.verify_added_items
end