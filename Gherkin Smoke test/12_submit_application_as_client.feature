Feature: Submit application as a client
	Background:
		Given client user 'Ted' from the client 'Shrensel Bee Farm' has filled in application fields
		And 'Ted' is ready to send them to broker user 'Chloe'
	Scenario: 'Ted' Submits his application to 'Chloe'
		Given I am logged in as 'Ted'
		When I have filled in all fields in the application
		And I click 'Finish'
		And I click 'Yes' to the modal acknowledging the application will be locked upon submission
		And I click 'Get Started' on the embedded e-signature experience
		And I click to sign the form
		And I draw in my signature
		And I click 'Continue'
		And I click 'Agree'
		Then I should see an Application Submitted message
	Scenario: 'Ted' Submits his application to 'Chloe' and declines upsell
		Given I am logged in as 'Ted'
		And 'Chloe' Has turned on the upsell feature
		When I click 'Finish'
		And I click 'Yes' to the modal acknowledging the application will be locked upon submission
		And I click 'Get Started' on the embedded e-signature experience
		And I click to sign the form
		And I draw in my signature
		And I click 'Continue'
		And I click 'Agree'
		And I am presented with upsell opportunities
		And I click 'No Thanks'
		Then I should see an Application Submitted message
	Scenario: 'Ted' Submits his application to 'Chloe' and answers NPS
		Given I am logged in as 'Ted'
		And 'Chloe' Has turned on the NPS feature
		When I click 'Finish'
		And I click 'Yes' to the modal acknowledging the application will be locked upon submission
		And I click 'Get Started' on the embedded e-signature experience
		And I click to sign the form
		And I draw in my signature
		And I click 'Continue'
		And I click 'Agree'
		And I select an NPS score
		And I enter text feedback
		Then I should see a 'Thanks for sharing' confirmation message
