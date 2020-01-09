Feature: Share an application
	Background:
		Given a Broker user named 'Chloe'
    And a client user named 'Ted'
		And  there is a an application created within the client 'Shrensel Bee farm'
	Scenario: 'Chloe' shares an application with 'Ted' from 'Shrensel Bee Farm'
    Given I am logged in as Chloe
    And I am in the application I have created for 'Ted'
    When I click 'Save & Share'
    And I click 'Yes' on the modal that appears
    Then 'Ted' Should receive an email with a link to the Application
    
