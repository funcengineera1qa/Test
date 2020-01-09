Feature: Publish a configured form
	Background:
    Given an Admin user Named Aaron
    And a configured form titled 'Aaron's Intake'
  Scenario: Aaron publishes a form
    Given I am logged in as Aaron
    And I have just finished configuring questions in 'Aaron's Intake'
    When I click 'Publish'
    Then I should see the screen confirm the Changes and the draft will be overwritten
