Feature: Configure existing forms
	Background:
		Given an Admin user Named Aaron
		And that user has clicked 'Configure Questions' for a form titled 'Aaron's Intake'
  Scenario: Aaron Adds a Question
    Given I am logged in as Aaron
    And I am in the form 'Aaron's Intake'
    When I click the '+' Button
    And I select a short text field
    And I fill in question text
    And I click 'Save'
    Then I should see the new question added at the bottom of the form section
  Scenario: Aaron Deletes a Question
    Given I am logged in as Aaron
    And I am in the form 'Aaron's Intake'
    When I hover over a question I want to Delete
    And I click the 'Delete' Button
    Then I should see that question removed
  Scenario: Aaron Changes field type of an existing Question
    Given I am logged in as Aaron
    And I am in the form 'Aaron's Intake'
    When I hover over a question that I want to edit
    And I click the 'Edit' Button
    And I click the 'type' dropdown
    And I select a different field type
    Then I should see the field type has changed
  Scenario: Aaron Adds hide logic to a field
    Given I am logged in as Aaron
    And I am in the form 'Aaron's Intake'
    When I hover over a question that I want hide with logic
    And I click the 'Edit' Button
    And I click the 'Hide Logic' Butoon
    And I click '+Add Logic'
    And I select the parameters that will hide the field I am working on
    And I click 'save' within the logic builder
    And I click save 'save' in the field editer
    Then I should see the question greyed out and hidden
