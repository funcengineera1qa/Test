Feature: Create a client
	Background:
		Given a Brokerage named 'Gumption'
		And I am logged in as broker user 'Chloe'
	Scenario: 'Chloe' adds a new client named 'Shrensel Bee Farm' And a user named 'Ted'
		Given I am logged in as 'Chloe'
		And I am on the clients page
		When I click 'new client'
		And I add the name 'Shrensel Bee Farm
		And I select the client type 'existing'
		And I click 'create'
		And I fill in company details page
		And I click 'next'
		And I enter contact information for 'Ted'
		And I click 'confirm'
		And I confirm 'Chloe' is the primary broker
		And I click 'confirm'
		Then 'Shrensel Bee Farm' will be created with 'Ted' as the contact
