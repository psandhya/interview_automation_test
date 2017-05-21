require 'selenium-webdriver'
require 'require_all'
require_all 'pages'

Given(/^I am on signup page$/) do
  @homepage = HomePage.new @driver
  @utils = Utilities.new @driver
  @loginpage = LoginPage.new @driver
  @signuppage = SignUpPage.new @driver
  @accountpage = AccountPage.new @driver
  @homepage.GoToSignUpLoginPage
  @utils.WaitForElement(@loginpage.signup)
  @loginpage.signup.click
  @utils.WaitForElement(@signuppage.letsFixFoodChain)
end

When(/^I enter signup details as below$/) do |table|
  data = @utils.GetDataFromDataTable(table)
  @signuppage.EnterSignUpDetails(data["email"],data["password"],data["postcode"])
  end

When(/^I click on 'lets fix the food chain' button$/) do
  @signuppage.letsFixFoodChain.click
  sleep 5
end

Then(/^I should see "([^"]*)" message$/) do |message|
  expect(@accountpage.notInYourAreaMessage.text).to eq(message)
end

When(/^I click on 'browse anyway' button$/) do
 @accountpage.browseAnyWay.click
end

Then(/^I should be navigated to account page$/) do
  expect(@accountpage.account.text.should).to eq('Account')
end

When(/^I enter (.*) (.*) (.*) signup details$/) do |email, password, postcode|
  @signuppage.EnterSignUpDetails(email,password,postcode)
end

Then(/^I should see corresponding (.*)$/) do |errormessage|
  actualMessage = @signuppage.errorMessages.text

  if errormessage.include? "~"
     messages = errormessage.split("~")
     messages.each do |message|
       expect(actualMessage).to include(errormessage)
     end

  else
    expect(actualMessage).to include(errormessage)
  end

end

