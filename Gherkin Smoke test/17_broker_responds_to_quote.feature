Feature: Accept quote as broker user
	Background:
		Given user 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to broker user 'Chloe'
		And 'Chloe' has submitted a quote request to 'Rachel' from the carrier 'Chubb'
    And 'Rachel' has added a quote for the application from 'Ted'
	Scenario: Broker user 'Chloe' accepts a quote from underwriter user 'Rachel' on behalf of client user 'Ted' from 'Shrensel Bee Farm'
    Given I am broker user 'Chloe'
		And I check my email
		And I locate an automated message from Broker Buddha notifying me of an added quote from 'Rachel'
    And I click on the email
    And I click on the link within the email
    Then I should be able to accept the quote from 'Rachel'
