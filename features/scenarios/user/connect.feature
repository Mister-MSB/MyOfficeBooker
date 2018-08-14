Feature: User can log in
  As an user
  I want to log
  So that I can see the homepage

  Scenario: User can log in
    Given A valid user
    When I go to home page
    And I click on "Connexion" link
    And I log as an user
    Then I see "Bienvenue User MSB" on this page
    Then I see "Louer une salle à Paris" on this page
    Then I see "TOP RECHERCHE" on this page
