# Todo Windsurf

A modern todo application built with test-first development approach using BDD (Behavior Driven Development).

## Project Structure

```
src/
  test/
    spec/           # Phase 2: Feature specifications
      features/     # Gherkin scenarios
        todo_creation.feature
        todo_listing.feature
        todo_update.feature
        todo_deletion.feature
        todo_details.feature
      contracts/    # Step interfaces
        TodoCreationSteps.kt
        TodoListingSteps.kt
        TodoUpdateSteps.kt
        TodoDeletionSteps.kt
        TodoDetailsSteps.kt
    impl/          # Phase 3: Test implementation
      steps/       # Step definitions (coming soon)
```

## Features

1. Todo Creation
   - Create todos with title (required)
   - Optional description, due date, and priority
   - Input validation
   - Success/error feedback

2. Todo Listing and Filtering
   - View all todos
   - Sort by due date or priority
   - Filter by completion status
   - Empty state handling

3. Todo Updates
   - Edit todo fields
   - Toggle completion status
   - Field validation
   - Modification tracking

4. Todo Deletion
   - Single todo deletion
   - Bulk delete completed todos
   - Confirmation flow
   - Success feedback

## Development Phases

1. ✅ Analysis Phase
   - Defined requirements
   - Established architecture
   - Documented assumptions
   - Created test scenarios

2. ✅ Specification Phase
   - Created Gherkin features
   - Defined step contracts
   - Validated scenarios
   - No implementation details

3. 🚧 Implementation Phase (Coming Soon)
   - Step definitions
   - Production code
   - Integration tests
   - Documentation updates

## Getting Started

Coming soon in Phase 3 (Implementation)

## Contributing

This project is developed using a strict test-first approach. Please ensure:

1. All features have corresponding Gherkin scenarios
2. All scenarios have step contracts
3. No implementation details in Phase 2
4. Clear separation of concerns

## License

This project is licensed under the MIT License - see the LICENSE file for details
