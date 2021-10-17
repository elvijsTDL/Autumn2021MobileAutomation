class MainScreen

  def initialize
    @footer_shop_button = Elements.new(:id,"floating")
    @footer_my_account_button = Elements.new(:id,"social_nav")
  end

  def check_floating_button
    @footer_shop_button.get_element
  end

  def open_my_account_page
    @footer_my_account_button.click
  end

end