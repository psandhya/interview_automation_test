
class SignUpPage

  attr_accessor :driver

  def initialize(driver)
    @driver=driver
  end
  def emailAddress
     @driver.find_element(:id,"email")
  end
  def password
     @driver.find_element(:id,"password")
  end
  def postcode
     @driver.find_element(:id,"zipcode")
  end
  def letsFixFoodChain
     @driver.find_element(:id,"email-signup-form-submit")
  end
  def errorMessages
    @driver.find_element(:css,".fd-alert.fd-alert-danger.session__errors")
  end
  def EnterSignUpDetails(email,pass,zip)
     emailAddress.send_keys(email)
     password.send_keys(pass)
     postcode.send_keys(zip)
  end

end