Feature: Close application as broker user
	Background:
		Given user 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to broker user 'Chloe'
		And 'Chloe' has submitted a quote request to 'Rachel' from the carrier 'Chubb'
    And 'Rachel' has added a quote for the application from 'Ted'
    And 'Chloe' has accepted the quote
    And 'Rachel' has converted the quote to a policy
		And 'Chloe' has confirmed the policy
	Scenario: Broker user 'Chloe' closes the application from 'Ted' for 'Shrensel Bee Farm'
    Given I am 'Chloe'
		And I have added policy details for the application from 'Shrensel Bee farm'
		And I am on the dashboard
		And I located the application for 'Shrensel Bee Farm'
		And I click on it
		And I click 'Close'
		Then the application should be closed and removed from the dashboard
