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

When(/^User goes to login page$/) do
  @screens.auth_screen.go_to_login_page
end

And(/^User inputs (.*) into the email field$/) do |email|
  @screens.auth_screen.insert_login_email(email)
end

And(/^User inputs (.*) into the password field$/) do |password|
  @screens.auth_screen.insert_login_password(password)
end

And(/^The The user clicks on login$/) do
  @screens.auth_screen.submit_login
end

And(/^My account page contains users email$/) do
  @screens.main_screen.open_my_account_page
  @screens.my_account_screen.validate_user_name
end