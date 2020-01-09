Feature: Import Form to Broker Buddha
	Background:
		Given a Admin user Named Aaron
		And  there is a completed hellosign template ID of 123
	Scenario: Aaron creates a form
		Given I am logged in as 'Aaron'
		When I to Add a new form
		And  I call the form 'Aaron's Intake'
		And  I click Submit
		Then I should return to the master forms list
	Scenario: Aaron imports a Hellosign Template to 'Aaron's Intake'
		Given I am logged in as Aaron
		When I locate the form titled 'Aaron's intake'
		And  I click 'Update content'
		And  I paste the template ID 123
		And  I click 'save and configure'
		Then I should see the contents of the template replicated on Broker Buddha and end up looking at the first section of the form
