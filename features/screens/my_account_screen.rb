class MyAccountScreen

  def initialize
    #THIS IS HORRIBLE, AUTOMATICLY GENERATED TEXTVIEW
    #NEVER USE THIS IN ANY PROJECT OR ANYWHERE ELSE WHATSOEVER
    # NEVER NEVER NVER NVERVNEVNERNENVENRENVNER
    @email_container = Elements.new(:id,"textView84")
    @users_name_container = Elements.new(:xpath,'//android.view.ViewGroup/android.widget.TextView[contains(@text,"YoloBolo")]')
  end


  def validate_user_name
    expected = "YoloBolo44"
    actual = @users_name_container.get_text
    raise "ELEMENT TEXT NOT CORRECT: Expected: #{expected}  Actual: #{actual}" unless expected == actual
  end

end