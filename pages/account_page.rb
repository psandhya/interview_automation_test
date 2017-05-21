class AccountPage
  attr_accessor :driver

  def initialize(driver)
    @driver=driver
  end
  def browseAnyWay
    @driver.find_element(:css, ".fd-btn-success.referred-popup__browse-btn")
  end
  def notInYourAreaMessage
    @driver.find_element(:css, "p.text-center")
  end
  def account
    @driver.find_element(:css,"[data-qaid='account-toggler']")
  end
end