class MainScreen

  def initialize
    @footer_shop_button = Elements.new(:id,"floating")
  end

  def check_floating_button
    @footer_shop_button.get_element
  end

end