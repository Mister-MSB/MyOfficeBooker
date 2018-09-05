Feature: Visitor can see homepage
  As an visitor
  I want to see the homepage

  Scenario: Visitor can see homepage
    When I go to home page
    Then I see "Connexion" on this page
    Then I see "Vos salles de séminaires" on this page
    Then I see "Top Recherche" on this page
