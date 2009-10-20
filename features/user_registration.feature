Feature: User Registration
  In order to use the application
  As an user
  I want to be able to register with the application

  Scenario: Successful registration
    Given I am on the user registration page
    When I fill in "Email" with "abc@example.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Register"
    Then I should be on logged in page

  #Scenario: Unsuccessful registration
    
    
