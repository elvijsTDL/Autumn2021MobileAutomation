require "appium_lib"

opts = {
  caps: {
    platformName: "Android",
    deviceName: "Samsungs",
    automationName: "UiAutomator2",
    app: "/Users/elvijsdzirkals/Desktop/Foreveryng.apk",
    udid: "RF8N205TNHZ"
  },
  appium_lib: {
    server_url: "http://localhost:4723/wd/hub"
  }
}

$driver = Appium::Driver.new(opts,true)

Before do
  $driver.start_driver
  @screens = Screens.new
end


