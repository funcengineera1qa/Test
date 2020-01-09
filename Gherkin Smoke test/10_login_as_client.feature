Feature: Log in as a client user
	Background:
		Given broker user 'Chloe' from the firm 'Gumption' has shared an applcation with client user 'Ted' from 'Shrensel Bee Farm'
	Scenario: 'Ted' Accesses his application share link
	Given I am 'Ted'
	When I check my email
	And I click the application share link from Broker Buddha
	And I enter a valid password
	Then I should be logged in as the client 'Ted'
