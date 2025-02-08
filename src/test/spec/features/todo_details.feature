# language: en
Feature: Todo Details
  As a user
  I want to view detailed information about my todos
  So that I can see all task information

  Background:
    Given the todo application is running
    And I am on the todo list page

  Scenario: TC2.2 - View single todo details
    Given a todo exists with:
      | title         | description    | due_date  | priority |
      | Buy groceries | Get milk, eggs | tomorrow  | HIGH     |
    When I click on the "Buy groceries" todo
    Then I should see the todo details view
    And I should see title "Buy groceries"
    And I should see description "Get milk, eggs"
    And I should see due date as tomorrow
    And I should see priority as "HIGH"
    And I should see the creation timestamp
    And I should see the last modified timestamp

  Scenario: TC2.3 - View non-existent todo
    When I try to view todo with ID "non-existent-id"
    Then I should see a 404 error message
    And I should be redirected to the todo list

  Scenario: TC4.2 - Delete non-existent todo
    When I try to delete todo with ID "non-existent-id"
    Then I should see a 404 error message
    And I should remain on the current page
