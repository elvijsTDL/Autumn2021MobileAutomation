class Screens

  def auth_screen
    @auth_screen ||= AuthorizationScreen.new
  end

  def main_screen
    @main_screen ||= MainScreen.new
  end

  def my_account_screen
    @my_account_screen ||= MyAccountScreen.new
  end

end