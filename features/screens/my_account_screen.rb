class MyAccountScreen

  def initialize
    # THIS IS HORRIBLE, AUTOMATICLY GENERATED TEXTVIEW
    # NEVER USE THIS IN ANY PROJECT OR ANYWHERE ELSE WHATSOEVER
    # NEVER NEVER NVER NVERVNEVNERNENVENRENVNER
    @email_container = Elements.new(:id, "textView84")
  end

  def validate_user_name(name)
    # Not really necessary to assert the names
    # Method left here to show that you can have dynamic element selectors
    @users_name_container = Elements.new(:xpath, "//android.view.ViewGroup/android.widget.TextView[contains(@text,\"#{name}\")]")
    expected = name
    actual = @users_name_container.get_text
    raise "ELEMENT TEXT NOT CORRECT: Expected: #{expected}  Actual: #{actual}" unless expected == actual
  end

  def validate_email(email)
    expected = email
    actual = @email_container.get_text
    raise "ELEMENT TEXT NOT CORRECT: Expected: #{expected}  Actual: #{actual}" unless expected == actual
  end

end