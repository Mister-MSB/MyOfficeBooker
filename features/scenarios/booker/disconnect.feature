Feature: Booker can log out
  As a booker
  I want to log
  So that I can see the homepage

  Scenario: Booker can log out
    Given A valid booker
    When I go to home page
    And I click on "Connexion" link
    And I log as a booker
    Then I see "Bienvenue" on this page
    Then I see "Vos salles de séminaires" on this page
    Then I see "Top Recherche" on this page
    And I click on "se déconnecter" link
    Then I see "Connexion" on this page
    Then I see "Vos salles de séminaires" on this page
    Then I see "Top Recherche" on this page
