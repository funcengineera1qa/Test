Feature: Request a quote
	Background:
		Given 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to 'Chloe'
	Scenario: 'Chloe' requests a quote for the application from 'Ted' to the carriers 'Chubb' and 'Travelers'
		Given I am logged in as Broker user 'Chloe'
		And I am on the application details page for the submitted Application
		When I click 'Request Quote'
		And I select the coverages I want quotes on
		And I click 'Next'
		And I fill in dates for the timing page
		And I click 'Next'
		And I select all files I want to send
		And I click 'Next'
		And I select loss history information
		And I click 'Next'
		And I select the carriers 'Chubb' and 'Travelers'
		And I select the contact 'Rachel' from 'Chubb'
		And I select the contact 'Charlie' from 'Travelers'
		And I click 'Next'
		And I click 'Send' on the email template shown
		Then an email will be sent to 'Rachel' from 'Chubb' and 'Charlie' from 'Travelers' with the dates and files specified 
