
Before  do
    browser = ENV['BROWSER']
    url = ENV['URL']
    @driver = start_browser(browser)
	@driver.manage.window.maximize
	@driver.navigate.to url
end

After  do
	@driver.quit
end
	
def start_browser(browser)
    case browser
    when 'firefox'
      Selenium::WebDriver.for :firefox,driver_path: '/Users/maheshtanneeru/Downloads/geckodriver'
      driver = Selenium::WebDriver.for :firefox
    when 'chrome'
      prefs = {
			credentials_enable_service: false
	  }
      driver = Selenium::WebDriver.for :chrome,driver_path: '/Users/maheshtanneeru/Downloads/chromedriver',switches: %w[--disable-infobars ],prefs: prefs
    else
      Selenium::WebDriver.for :chrome,driver_path: '/Users/maheshtanneeru/Downloads/chromedriver'
      driver = Selenium::WebDriver.for :chrome
    end
    driver
end