class AuthorizationScreen

  def initialize
    @go_to_login_page_button = Elements.new(:id,"go_to_login_btn")
    @sign_up_button = Elements.new(:id , "sign_up_login")
    @sign_up_name_field = Elements.new(:id,"signup_name")
    @sign_up_phone_field = Elements.new(:id,"signup_phone")
    @sign_up_email_field = Elements.new(:id,"signup_email")
    @sign_up_password_field = Elements.new(:id,"signup_password")
    @sign_up_confirm_password_field = Elements.new(:id,"signup_confirm_password")
    @submit_sign_up = Elements.new(:id,"sign_up_btn")
    @skip_referral_button = Elements.new(:id,"skip_btn")
    @skip_verification_button = Elements.new(:id,"skip_verification")
    @login_email_field = Elements.new(:id,"login_email")
    @login_password_field = Elements.new(:id,"login_password")
    @login_submit_button = Elements.new(:id,"login_btn")
  end

  def go_to_login_page
    @go_to_login_page_button.click
  end

  def go_to_signup_page
    @sign_up_button.click
  end

  def type_random_credentials
    password = "Password123"
    @sign_up_name_field.type("Nameblala")
    @sign_up_phone_field.type("9767867657")
    @sign_up_email_field.type("emaillalal#{rand(1...1000000)}@gmail.com")
    @sign_up_password_field.type(password)
    @sign_up_confirm_password_field.type(password)
  end

  def submit_sign_up
    @submit_sign_up.click
  end

  def skip_referral_code
    @skip_referral_button.click
  end

  def skip_phone_verification
    @skip_verification_button.click
  end

  def insert_login_email(text)
    @login_email_field.type(text)
  end

  def insert_login_password(text)
    @login_password_field.type(text)
  end

  def submit_login
    @login_submit_button.click
  end

end