Feature: Create a new Brokerage firm
  Background:
    Given a Admin user Named Aaron
  Scenario: Aaron adds a new brokerage firm named 'Gumption'
    Given I am logged in as Aaron
    When I click '+ Add Firm'
    And I fill in fields with information for 'Gumption'
    And I select a plan type
    And I click Submit
    Then I should see a confirmation message the contact specified should receive a welcome email
