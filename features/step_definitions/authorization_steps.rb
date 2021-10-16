And(/^User types in random user credentials$/) do
  @screens.auth_screen.type_random_credentials
end

And(/^User submits the registration$/) do
  @screens.auth_screen.submit_sign_up
end

And(/^User skips referral code screen$/) do
  @screens.auth_screen.skip_referral_code
end

And(/^User skips verify phone number screen$/) do
  @screens.auth_screen.skip_phone_verification
end

Then(/^User sees the home screen$/) do
  @screens.main_screen.check_floating_button
end

And(/^User goes to the sign up page$/) do
  @screens.auth_screen.go_to_signup_page
end