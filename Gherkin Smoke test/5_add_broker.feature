Feature: Add a broker user
	Background:
		Given an Admin user Named 'Aaron'
    And a brokerage named 'Gumption'
  Scenario: Aaron adds a new broker named 'Chloe' to the firm 'Gumption'
    Given I am logged in as Aaron and on the 'Brokerages' page
    When I locate the firm named 'Gumption'
    And I click 'Add Broker'
    And I fill in the fields with contact information for 'Chloe'
    And I click 'Add Employee'
    Then I will see a confirmation message and 'Chloe' will receive a welcome email
