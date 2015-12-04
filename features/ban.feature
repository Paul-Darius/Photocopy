Feature: Ban

  As an admin of the system, I should be able to ban any user.

  Scenario: Ban a user

  A user can be banned by an administrator

    Given I am signed in as an admin
    When I visit the user's list page
    And There is a registered user
    Then I should see a link to ban a user
    And I should see a link to see user's statistics
