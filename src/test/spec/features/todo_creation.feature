# language: en
Feature: Todo Creation
  As a user
  I want to create new todos
  So that I can track my tasks effectively

  Background:
    Given the todo application is running
    And I am on the todo creation page

  Scenario: Create a todo with all fields
    When I enter "Buy groceries" as the title
    And I enter "Get milk, eggs, and bread" as the description
    And I set the due date to tomorrow
    And I set the priority to "HIGH"
    And I submit the todo
    Then a new todo should be created
    And the response should include a todo ID
    And the todo should have title "Buy groceries"
    And the todo should have description "Get milk, eggs, and bread"
    And the todo should have tomorrow as the due date
    And the todo should have "HIGH" priority
    And the todo should be incomplete
    And I should see a success message

  Scenario: Create a todo with only required fields
    When I enter "Call mom" as the title
    And I submit the todo
    Then a new todo should be created
    And the response should include a todo ID
    And the todo should have title "Call mom"
    And the todo should have no description
    And the todo should have no due date
    And the todo should have "MEDIUM" priority
    And the todo should be incomplete
    And I should see a success message

  Scenario: Attempt to create a todo without title
    When I submit the todo without entering a title
    Then no todo should be created
    And I should see a validation error message "Title is required"

  Scenario: Create a todo with maximum length title
    When I enter a 100 character title
    And I submit the todo
    Then a new todo should be created
    And the response should include a todo ID
    And I should see a success message

  Scenario: Attempt to create a todo with too long title
    When I enter a 101 character title
    And I submit the todo
    Then no todo should be created
    And I should see a validation error message "Title must not exceed 100 characters"

  Scenario: Create a todo with maximum length description
    When I enter "Test todo" as the title
    And I enter a 500 character description
    And I submit the todo
    Then a new todo should be created
    And the response should include a todo ID
    And I should see a success message

  Scenario: Attempt to create a todo with too long description
    When I enter "Test todo" as the title
    And I enter a 501 character description
    And I submit the todo
    Then no todo should be created
    And I should see a validation error message "Description must not exceed 500 characters"

  Scenario: Attempt to create a todo with past due date
    When I enter "Test todo" as the title
    And I set the due date to yesterday
    And I submit the todo
    Then no todo should be created
    And I should see a validation error message "Due date must be in the future"
