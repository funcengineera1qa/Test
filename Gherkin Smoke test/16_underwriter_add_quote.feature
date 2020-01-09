Feature: Add quote as underwriter user
	Background:
		Given user 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to 'Chloe'
		And 'Chloe' has submitted a quote request to 'Rachel' from the carrier 'Chubb'
	Scenario: 'Rachel' from 'Chubb' Adds a quote for 'Shrensel Bee Farm'
		Given I am logged in as the underwriter user 'Rachel'
		And I locate the submission for 'Shrensel Bee Farm'
		And I click on it
		And I click 'Add Quote'
		And I fill in details for the quote
		And I click 'Save'
		Then 'Chloe' will receive an email confirming that 'Rachel' from 'Chubb' has added a quote to the Application
