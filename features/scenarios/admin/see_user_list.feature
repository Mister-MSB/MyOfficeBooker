Feature: Admin can see active admin admin users list
  As an admin
  I want to log
  So that I can see the admin users list

  Scenario: Admin can see users list
    Given A valid admin
    When I go to admin login page
    And I log as an admin
    And I click on "Admin Users" link
    Then I see "Sign In Count" on this page
