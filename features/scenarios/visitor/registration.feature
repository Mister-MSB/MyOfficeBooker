Feature: Visitor can register
  As an visitor
  I want to register
  So I ll be able to book a place

  Scenario: Visitor can register
    When I go to home page
    And I click on "Inscription" link
    And I fill the registration form correctly
    Then I expect current path to be "root_path"


  Scenario: Visitor can't register
    When I go to home page
    And I click on "Inscription" link
    And I fill the registration form badly
    Then I expect current path to be "booker_registration_path"
