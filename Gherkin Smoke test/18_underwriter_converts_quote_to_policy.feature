Feature: Convert quote to policy as underwriter user
	Background:
		Given user 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to broker user 'Chloe'
		And 'Chloe' has submitted a quote request to 'Rachel' from the carrier 'Chubb'
    And 'Rachel' has added a quote for the application from 'Ted'
    And 'Chloe' has accepted the quote
	Scenario: Underwriter user 'Rachel' converts accepted quote to a policy
    Given I am 'Rachel'
		And I check my email
		And I locate an automated message from Broker Buddha notifying me of an accepted quote from 'Chloe'
    And I click on the email
    And I click on the link within the email
    Then I should be able to convert the accepted quote into a policy for 'Chloe' to confirm
