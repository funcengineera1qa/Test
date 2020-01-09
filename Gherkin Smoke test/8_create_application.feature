Feature: Create an application
	Background:
		Given a Broker user Named 'Chloe'
		And  a client named 'Shrensel Bee Farm'
	Scenario: 'Chloe' creates an application for client user 'Ted' at the company 'Shrensel Bee Farm'
    Given I am logged in as 'Chloe'
    And I am on the client page for 'Shrensel Bee Farm'
    When I click the '+new' button in the 'Applications' window
    And I click '+add' for each smart form I'd like to add
    And I click 'Save'
    Then I will be brought into the application I've created
