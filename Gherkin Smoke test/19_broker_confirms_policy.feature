Feature: Confirm policy as broker user
	Background:
		Given user 'Ted' from the client 'Shrensel Bee Farm' has submitted an application to broker user 'Chloe'
		And 'Chloe' has submitted a quote request to 'Rachel' from the carrier 'Chubb'
    And 'Rachel' has added a quote for the application from 'Ted'
    And 'Chloe' has accepted the quote
    And 'Rachel' has converted the quote to a policy
	Scenario: Broker user 'Chloe' confirms policy details
    Given I am 'Chloe'
		And I check my email
		And I locate an automated message from Broker Buddha notifying me of a new policy
    And I click on the email
    And I click on the link within the email
    Then I should be able to confirm the details of the policy and add them to the application for 'Shrensel Bee Farm'
