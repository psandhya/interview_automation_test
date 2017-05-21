Feature: Sign up
  As a user
  I would like to signup to 'farmdrop' website
  So that i can login to 'farmdrop' website

Background: 
  Given I am on signup page
  
 Scenario: Verify signup functionality for postcodes that are not in range
  When I enter signup details as below
      |email            |password|postcode|
      |test@test2591.com|abc123  |RM188SH |
  And  I click on 'lets fix the food chain' button
  Then I should see "We're not quite in your area at the moment. We'll shoot you an email as soon as we are." message
  When I click on 'browse anyway' button
  Then I should be navigated to account page

 Scenario: Verify successful signup functionality
  When I enter signup details as below
    |email            |password|postcode|
    |test@test2692.com|abc123  |WC1V7BD |
  And  I click on 'lets fix the food chain' button
  Then I should be navigated to account page

 Scenario Outline: Verify error messages for invalid inputs
  When I enter <email> <password> <postcode> signup details
  And  I click on 'lets fix the food chain' button
  Then I should see corresponding <errormessage>
  Examples:
    | email         |password |postcode|errormessage                                    |
    | test@1534     |test@123 |rm188sh |Email is invalid                                |
    | test@1634.com |test     |rm188sh |Password is too short (minimum is 6 characters) |
    |               |test1234 |rm188sh |Email can't be blank                            |
    |test@425.com   |         |rm188sh |Password can't be blank                         |
    |test@5867.com  |test789  |        |Zipcode can't be blank                          |
    |               |         |        |Email can't be blank~Password can't be blank~Zipcode can't be blank|