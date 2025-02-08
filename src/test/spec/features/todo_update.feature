# language: en
Feature: Todo Update
  As a user
  I want to update my existing todos
  So that I can keep my task information current

  Background:
    Given the todo application is running
    And I am on the todo list page
    And a todo exists with:
      | title         | description    | due_date  | priority |
      | Buy groceries | Get milk, eggs | tomorrow  | HIGH     |

  Scenario: Update todo title
    When I select the "Buy groceries" todo
    And I change the title to "Buy organic groceries"
    And I save the changes
    Then the todo should be updated
    And the todo should have title "Buy organic groceries"
    And the modified timestamp should be updated
    And I should see a success message

  Scenario: Update todo description
    When I select the "Buy groceries" todo
    And I change the description to "Get organic milk and free-range eggs"
    And I save the changes
    Then the todo should be updated
    And the todo should have description "Get organic milk and free-range eggs"
    And the modified timestamp should be updated
    And I should see a success message

  Scenario: Update todo due date
    When I select the "Buy groceries" todo
    And I change the due date to next week
    And I save the changes
    Then the todo should be updated
    And the todo should have next week as the due date
    And the modified timestamp should be updated
    And I should see a success message

  Scenario: Update todo priority
    When I select the "Buy groceries" todo
    And I change the priority to "LOW"
    And I save the changes
    Then the todo should be updated
    And the todo should have "LOW" priority
    And the modified timestamp should be updated
    And I should see a success message

  Scenario: Mark todo as complete
    When I select the "Buy groceries" todo
    And I mark it as complete
    Then the todo should be updated
    And the todo should be marked as complete
    And the modified timestamp should be updated
    And I should see a success message

  Scenario: Mark completed todo as incomplete
    Given the "Buy groceries" todo is marked as complete
    When I select the "Buy groceries" todo
    And I mark it as incomplete
    Then the todo should be updated
    And the todo should be marked as incomplete
    And the modified timestamp should be updated
    And I should see a success message

  Scenario: Attempt to update with empty title
    When I select the "Buy groceries" todo
    And I change the title to ""
    And I try to save the changes
    Then the todo should not be updated
    And I should see a validation error message "Title is required"

  Scenario: Cancel todo update
    When I select the "Buy groceries" todo
    And I change the title to "Changed title"
    And I cancel the update
    Then the todo should not be updated
    And the todo should have title "Buy groceries"

  Scenario: Attempt to update with too long title
    When I select the "Buy groceries" todo
    And I change the title to a 101 character string
    And I try to save the changes
    Then the todo should not be updated
    And I should see a validation error message "Title must not exceed 100 characters"

  Scenario: Attempt to update with too long description
    When I select the "Buy groceries" todo
    And I change the description to a 501 character string
    And I try to save the changes
    Then the todo should not be updated
    And I should see a validation error message "Description must not exceed 500 characters"

  Scenario: Attempt to update with past due date
    When I select the "Buy groceries" todo
    And I change the due date to yesterday
    And I try to save the changes
    Then the todo should not be updated
    And I should see a validation error message "Due date must be in the future"
