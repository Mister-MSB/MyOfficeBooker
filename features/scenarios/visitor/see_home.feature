Feature: Visitor can see homepage
  As an visitor
  I want to see the homepage

  Scenario: Visitor can see homepage
    When I go to home page
    Then I see "Connexion" on this page
    Then I see "Louer une salle à Paris" on this page
    Then I see "TOP RECHERCHE" on this page
