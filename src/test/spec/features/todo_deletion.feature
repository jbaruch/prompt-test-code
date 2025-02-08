# language: en
Feature: Todo Deletion
  As a user
  I want to delete todos
  So that I can remove completed or unnecessary tasks

  Background:
    Given the todo application is running
    And I am on the todo list page
    And the following todos exist:
      | title         | description    | due_date  | priority |
      | Buy groceries | Get milk, eggs | tomorrow  | HIGH     |
      | Call mom      |                |           | MEDIUM   |

  Scenario: Delete a todo
    When I select the "Buy groceries" todo
    And I click the delete button
    And I confirm the deletion
    Then the todo should be deleted
    And I should not see "Buy groceries" in the list
    And I should see a success message
    And I should see 1 todo in the list

  Scenario: Cancel todo deletion
    When I select the "Buy groceries" todo
    And I click the delete button
    And I cancel the deletion
    Then the todo should not be deleted
    And I should see "Buy groceries" in the list
    And I should see 2 todos in the list

  Scenario: Delete the last todo
    Given only one todo exists
    When I delete the todo
    Then I should see an empty list message
    And I should see a create todo button

  Scenario: Bulk delete completed todos
    Given the following todos exist:
      | title         | completed |
      | Buy groceries | true      |
      | Call mom      | true      |
      | Pay bills     | false     |
    When I select "Delete completed todos"
    And I confirm the bulk deletion
    Then completed todos should be deleted
    And I should see 1 todo in the list
    And I should see "Pay bills" in the list
    And I should see a success message
