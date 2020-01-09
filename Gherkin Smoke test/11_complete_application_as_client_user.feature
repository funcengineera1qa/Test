Feature: Log in as a client user
	Background:
		Given broker user 'Chloe' from the firm 'Gumption' has shared an applcation with client user 'Ted' from 'Shrensel Bee Farm'
		And 'Ted' has added a password and logged in
	Scenario: 'Ted' Accesses his application
		Given I am logged in as 'Ted'
		When I have access the application share link
		Then I should be able to fill in the fields in the form
