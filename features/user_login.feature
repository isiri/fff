Feature: User login
  In order to use the application
  As an user
  I want to be able to login to the system

  Background:
    Given there is a record for user with email "abc@example.com" and password "password"
    And there is a record for admin with email "admin@example.com" and password "password"

  Scenario: Successful login for a non-admin
    Given I am on the login page
    When I fill in "Email" with "abc@example.com"
    And I fill in "Password" with "password"
    And I press "Login"
    Then I should be on logged in page
    And I should not see "Admin"

  Scenario: Successful login for an admin
    Given I am on the login page
    When I fill in "Email" with "admin@example.com"
    And I fill in "Password" with "password"
    And I press "Login"
    Then I should be on logged in page
    And I should see "Admin"

  Scenario: Unsucessful login
    Given I am on the login page
    When I fill in "Email" with "nouser@example.com"
    And I fill in "Password" with "password"
    And I press "Login"
    Then I should be on the failed login page
