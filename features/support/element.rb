class Elements

  def initialize(type, value)
    @type = type
    @value = value
  end

  def get_element(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Method: #{@type} , Selector: #{@value}"
    }
    $driver.wait(wait_opts) {
      return $driver.find_element(@type, @value)
    }
  end

  def click(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Method: #{@type} , Selector: #{@value}"
    }
    $driver.wait(wait_opts) {
      $driver.find_element(@type, @value).click
    }
  end

  def type(text, timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Method: #{@type} , Selector: #{@value}"
    }
    $driver.wait(wait_opts) {
      $driver.find_element(@type, @value).send_keys(text)
      $driver.hide_keyboard
    }
  end

  def get_text(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Method: #{@type} , Selector: #{@value}"
    }
    $driver.wait(wait_opts) {
      $driver.find_element(@type, @value).text
    }
  end

  def get_multiple_elements(timeout: 15)
    wait_opts = {
      timeout: timeout,
      interval: 0.3,
      message: "Element was not found. Method: #{@type} , Selector: #{@value}"
    }
    $driver.wait(wait_opts) {
      elements = $driver.find_elements(@type, @value)
      return elements if elements.length > 0
      raise "Element was not found. Method: #{@type} , Selector: #{@value}"
    }
  end

end