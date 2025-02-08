# Test Scenarios

## 1. Todo Creation Tests

### TC1.1 - Valid Todo Creation
- Given: A new todo with valid title
- When: Creating the todo
- Then: Todo is created with correct fields
- And: Response includes todo ID

### TC1.2 - Invalid Todo Creation
- Given: A new todo without title
- When: Creating the todo
- Then: Returns validation error
- And: No todo is created

### TC1.3 - Todo with Optional Fields
- Given: A todo with all optional fields
- When: Creating the todo
- Then: Todo is created with all fields
- And: Optional fields are correctly set

## 2. Todo Retrieval Tests

### TC2.1 - Get All Todos
- Given: Multiple todos exist
- When: Requesting all todos
- Then: Returns list of all todos
- And: Each todo has correct fields

### TC2.2 - Get Single Todo
- Given: A todo exists
- When: Requesting by ID
- Then: Returns correct todo
- And: All fields match

### TC2.3 - Get Non-existent Todo
- Given: An invalid todo ID
- When: Requesting by ID
- Then: Returns 404 error

## 3. Todo Update Tests

### TC3.1 - Valid Todo Update
- Given: An existing todo
- When: Updating with valid fields
- Then: Todo is updated
- And: Modified timestamp changes

### TC3.2 - Invalid Todo Update
- Given: An existing todo
- When: Updating with invalid fields
- Then: Returns validation error
- And: Todo remains unchanged

### TC3.3 - Toggle Completion
- Given: An incomplete todo
- When: Toggling completion
- Then: Todo status changes
- And: Modified timestamp updates

## 4. Todo Deletion Tests

### TC4.1 - Valid Todo Deletion
- Given: An existing todo
- When: Deleting the todo
- Then: Todo is removed
- And: Returns success status

### TC4.2 - Delete Non-existent Todo
- Given: An invalid todo ID
- When: Deleting the todo
- Then: Returns 404 error

## 5. List Operations Tests

### TC5.1 - Sort by Due Date
- Given: Multiple todos with due dates
- When: Requesting sorted list
- Then: Returns todos in correct order

### TC5.2 - Filter by Completion
- Given: Both complete and incomplete todos
- When: Filtering by completion status
- Then: Returns only matching todos

### TC5.3 - Sort by Priority
- Given: Todos with different priorities
- When: Requesting priority-sorted list
- Then: Returns todos in priority order
