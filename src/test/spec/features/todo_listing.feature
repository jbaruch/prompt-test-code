# language: en
Feature: Todo Listing and Filtering
  As a user
  I want to view and filter my todos
  So that I can track my tasks efficiently

  Background:
    Given the todo application is running
    And I am on the todo list page
    And the following todos exist:
      | title          | description      | due_date  | priority | completed |
      | Buy groceries  | Get milk, eggs   | tomorrow  | HIGH     | false     |
      | Call mom       |                  |           | MEDIUM   | true      |
      | Pay bills      | Electricity, gas | next week | HIGH     | false     |
      | Read book      | Chapter 1-3      | today     | LOW      | false     |

  Scenario: View all todos
    When I view the todo list
    Then I should see 4 todos
    And they should be displayed in creation date order
    And each todo should show its title, description, due date, priority, and completion status

  Scenario: Filter todos by completion status
    When I filter by "completed" status
    Then I should see 1 todo
    And I should see "Call mom" in the list
    When I filter by "incomplete" status
    Then I should see 3 todos
    And I should not see "Call mom" in the list

  Scenario: Sort todos by priority
    When I sort by priority
    Then I should see todos in the following order:
      | title         | priority |
      | Buy groceries | HIGH     |
      | Pay bills     | HIGH     |
      | Call mom      | MEDIUM   |
      | Read book     | LOW      |

  Scenario: Sort todos by due date
    When I sort by due date
    Then I should see todos in the following order:
      | title         | due_date  |
      | Read book     | today     |
      | Buy groceries | tomorrow  |
      | Pay bills     | next week |
      | Call mom      |           |

  Scenario: Filter todos by priority
    When I filter by "HIGH" priority
    Then I should see 2 todos
    And I should see "Buy groceries" in the list
    And I should see "Pay bills" in the list
    And I should not see "Call mom" in the list
    And I should not see "Read book" in the list

  Scenario: Empty todo list
    Given no todos exist
    When I view the todo list
    Then I should see an empty list message
    And I should see a create todo button
