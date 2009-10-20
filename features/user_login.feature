Feature: User login
  In order to use the application
  As an user
  I want to be able to login to the system

  Background:
    Given there is a record for user with email "abc@example.com" and password "password"

  Scenario: Successful login
    Given I am on the login page
    When I fill in "Email" with "abc@example.com"
    And I fill in "Password" with "password"
    And I press "Login"
    Then I should be on logged in page

  #Scenario: Unsucessful login
