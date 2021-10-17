class ProductScreen

  def initialize
    @wishlist_buttons = Elements.new(:id,"wish_list")
    @go_back_to_main_screen_button = Elements.new(:id,"listing_back")
    @product_names = Elements.new(:id,"textView6")
    @wishlist_container = Elements.new(:id,"wishlist_rview")
  end

  def get_category_element(category)
    @chosen_category = Elements.new(:xpath, "//*[@resource-id='com.view9.foreveryng:id/sub_cat_child']/
      *[child::*[@resource-id=\"com.view9.foreveryng:id/listTitle\"]
      [contains(@text, \"#{category}\")]]")
  end

  def open_chosen_category(category)
    get_category_element(category).click
  end

  def add_first_item_to_wishlist
    all_product_names = @product_names.get_multiple_elements
    @wishlisted_product_name = all_product_names.first.text
    all_wishlist_buttons = @wishlist_buttons.get_multiple_elements
    all_wishlist_buttons.first.click
  end

  def click_back_button
    @go_back_to_main_screen_button.click
  end


  def verify_added_items
    expected = @wishlisted_product_name
    all_product_names = @product_names.get_multiple_elements
    actual = all_product_names.first.text
    raise "ELEMENT TEXT NOT CORRECT: Expected: #{expected}  Actual: #{actual}" unless expected == actual
  end

  def refresh_wishlist
    middleX = @wishlist_container.get_element.size.width / 2
    endY = @wishlist_container.get_element.size.height
    middleY = @wishlist_container.get_element.size.height / 2
    $driver.swipe(start_x: middleX, start_y: middleY,end_x:middleX,end_y:endY,duration:2000)
  end

end