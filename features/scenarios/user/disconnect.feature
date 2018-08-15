Feature: User can log out
  As an user
  I want to log
  So that I can see the homepage

  Scenario: User can log out
    Given A valid user
    When I go to home page
    And I click on "Connexion" link
    And I log as an user
    Then I see "Bienvenue User MSB" on this page
    Then I see "Louer une salle à Paris" on this page
    Then I see "Top Recherche" on this page
    And I click on "se déconnecter" link
    Then I see "Connexion" on this page
    Then I see "Louer une salle à Paris" on this page
    Then I see "Top Recherche" on this page
