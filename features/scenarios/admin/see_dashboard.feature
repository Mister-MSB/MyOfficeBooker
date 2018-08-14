Feature: Admin can see active admin dashboard
  As an admin
  I want to log
  So that I can see the dashboard

  Scenario: Admin can see dashboard
    Given A valid admin
    When I go to admin login page
    And I log as an admin
    Then I see "Bienvenue dans Active Admin" on this page
