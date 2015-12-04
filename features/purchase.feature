Feature: Purchase

  As a user of the queuing system, I want to print a pdf on my computer.

  Scenario: Add a purchase

    A user should be able to add a purchase to the photocopyshop owner's purchase list.

    Given I am a user
    And I want to print a pdf file
    And I am signed in
    When I visit the purchase page
    Then I should see a link to add a purchase
    When I click this link
    Then I should see a form to add a purchase
    When I fill the form and submit it
    Then I should see my new purchase

