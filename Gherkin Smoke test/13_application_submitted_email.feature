Feature: Application Submitted email
	Background:
		Given 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to 'Chloe'
	Scenario: 'Chloe' receives an automated email from Broker Buddha confirming submission from 'Ted'
		Given I am 'Chloe'
		When I check my email
    Then I should see a message confirming submission from Ted with a link to the submitted application for 'Shrensel Bee Farm'
  Given I am
