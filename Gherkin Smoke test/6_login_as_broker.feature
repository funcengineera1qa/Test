Feature: Log in as broker
	Background:
		Given a Brokerage named 'Gumption'
		And a user 'Chloe' has been invited to the firm 'Gumption'
	Scenario: 'Chloe' logs into her 'Gumption' account
    Given I am 'Chloe'
    When I check my email
    And I click the registration link from Broker Buddha
    And I enter a valid password
    Then I should be logged in as the broker 'Chloe'
