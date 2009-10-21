Feature: Admin
  In order to use the application for administrative jobs
  As an admin
  I want to be able to perform the administrative jobs

  Background:
    Given I am logged in as an admin

  Scenario: Going to admin section
    When I follow "Admin"
    Then I should be on admin section
    


