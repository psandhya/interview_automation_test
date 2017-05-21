
# Automation Approach

## Required gems 

source 'http://rubygems.org'

* gem 'cucumber'
* gem 'rspec'
* gem 'selenium-webdriver'
* gem 'require_all'

## Framework approach

Framework is created using pageobject model below is the folder structure

* features:  cucumber features will be added to this folder
* features/step_definitions:  step definitions related to feature files will be added to this folder
* support: utilities and base driver initialization files are added to this folder
* pages: each file in this folder represents a page/section on web application and has all the elements and actions related to the page
* config: cucumber.yaml added to this folder which contains default cucumber commandline arguments
* reports: folder to store sample reports
* report.html: html reporting file with test run information

## Running tests

* we can run tests using below command
  
   cucumber BROWSER=chrome URL=https://next.farmdrop.com/

* we can pass browser and url parameters from commandline

## Running tests on different browsers

* we can run tests on different browsers and different environments by passing browser and url as parameters to 'cucumber' [and we can use these comands with different parameters to create CI builds]

Example:
 
 Running tests on Chrome in Dev environment:  cucumber BROWSER=chrome URL=https://dev.farmdrop.com/
 Running tests on firefox in UAT environment: cucumber BROWSER=firefox URL=https://next.farmdrop.com/

## Source control 

* i forked source repository and used git branching to make changes to source code 
    
## Reporting

* cucumber reporting is used to generate html test reports and when we run tests by default reports will be stored in report.html in root folder [sample html reports can be found in reports folder]


## ******************************************************


# Source readme

# Welcome to the farmdrop technical test for automation testers

Please spend no more than two hours on the following task. You are not expected to finish all of it - this is as much to understand how you approach things as it is to see if you can build working tests.

## Background
Farmdrop sometimes uses a staging site at [https://next.farmdrop.com](https://next.farmdrop.com) to run integration tests.  The database is reset periodically and the payments system is connected to a sandbox, so you can experiment freely.

## Task
Please build a suite of tests for the sign up form which will run against this staging site.

2. Write out a series of scenarios as a Cucumber feature file(s). Try to think from regression prospective and come up with as many scenarios as you feel are appropriate in order to make sure this form is fully tested.
2. Begin to automate your scenarios and continue until your allocated time runs out. Use Cucumber/Ruby and any other gems/frameworks you feel are appropriate.

## Notes
* Code reuse is important to us, so we are interested in seeing what approaches you take to keep your code and tests modular.
* We take version control seriously, so please show us how you approach this.
* Can you show an approach to handle multiple browsers(headless,chrome should do) as well.
* Your submission should include instructions on how to run it.

## Submission
Please fork this repository and commit code to it. Send us the link to your repo in an email.

Good Luck!!!
