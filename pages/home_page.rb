
class HomePage
  attr_accessor :driver

  def initialize(driver)
    @driver=driver
  end
  def signupOrLogin
    @driver.find_element(:css, "[data-qaid='account-toggler']")
  end

  def GoToSignUpLoginPage
  	signupOrLogin.click
  end
  
end