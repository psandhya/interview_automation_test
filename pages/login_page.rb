
class LoginPage
  attr_accessor :driver

  def initialize(driver)
    @driver=driver
  end
  def signup
     @driver.find_element(:css,".fd-link-alternate.session__navigation-link")
  end

end