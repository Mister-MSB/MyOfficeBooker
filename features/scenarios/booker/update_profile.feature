Feature: Booker can update his information
  As a booker
  I want to log
  So that I can update my personals informations

  Scenario: Booker can update his information
    Given A valid booker
    When I go to home page
    And I click on "Connexion" link
    And I log as a booker
    And I click on "Bienvenue Booker MSB" link
    Then I expect current path to be "edit_booker_registration_path"
    And I fill the update registration form correctly
    Then I expect current path to be "root_path"

  Scenario: Booker can't update his information
    Given A valid booker
    When I go to home page
    And I click on "Connexion" link
    And I log as a booker
    And I click on "Bienvenue Booker MSB" link
    Then I expect current path to be "edit_booker_registration_path"
    And I fill the update registration form badly
    Then I expect current path to be "booker_registration_path"
