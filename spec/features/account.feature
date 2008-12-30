Feature: User Account
  In order to provide personal information
  Users will need to be able to update their account

  Scenario: Updating name
    Given I am logged in
    And I follow "Account"
    And I fill in "Name" with "Kamal Fariz"
    When I press "Submit"
    Then I should see "Your information was saved"
