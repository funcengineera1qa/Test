Feature: Download PDFs
	Background:
		Given 'Ted' from the client 'Shrensel Bee Farm' has submitted an application
		And 'Chloe' has clicked the link she received via the 'application submitted' email
	Scenario: 'Chloe' downloads PDFs from the application that 'Ted' submitted
		Given I am logged in as Broker user 'Chloe'
		When I click the link I receive in the 'application submitted' email
    And I am brought to the application details page for the application 'Ted' submitted
    And I click on the files titled 'Application PDF'
		Then I should be able to download each signed and completed PDF
