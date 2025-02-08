# PROMPT-TEST-CODE Process Implementation

This repository demonstrates the PROMPT-TEST-CODE process, a rigorous approach to AI-driven software development that enforces test-first development through strict phase separation. The process is implemented using a simple todo application as an example.

## Core Principles

1. **Strict Phase Separation**
   - Analysis → Specification → Implementation
   - No phase mixing allowed
   - Clear approval gates between phases
   - Continuous documentation

2. **Test-First Development**
   - Tests as concrete specifications
   - No implementation details in test phase
   - Clear contract definitions
   - Behavioral testing approach

3. **Continuous Documentation**
   - Required context files
   - Progress tracking
   - Technical decisions
   - Gate validations

## Process Structure

### 1. Analysis Phase (STOP)
- Required Context Files:
  ```
  product_context.md     # Intent and goals
  active_context.md      # Current state
  system_architecture.md # Architecture patterns
  tech_context.md       # Stack, frameworks
  progress.md           # Phase tracking
  requirements.md       # Feature specs
  test_scenarios.md     # Gherkin scenarios
  technical_assumptions.md # Technical decisions
  ```
- Deliverables:
  - Scope definition
  - System boundaries
  - Quality requirements
  - Technical assumptions
- USER approval required

### 2. Specification Phase (STOP)
- Directory Structure:
  ```
  src/
    test/
      spec/           # Phase 2 only
        features/     # Gherkin scenarios
        contracts/    # Step interfaces
      impl/          # Phase 3 only
        steps/       # Step definitions
  ```
- Feature Writing:
  - Gherkin scenarios
  - Ubiquitous language
  - Happy paths and edge cases
- Contract Creation:
  - Step interfaces
  - Clear contracts
  - NO implementation details
- USER approval required

### 3. Implementation Phase
- Entry Requirements:
  - Approved feature files
  - Complete step contracts
  - Clear understanding
- Implementation Cycle:
  1. Pick ONE scenario
  2. Document current scenario
  3. Implement step definitions
  4. Implement production code
  5. Run ALL scenarios
  6. Report results
  7. Repeat if failures exist

## Example Implementation: Todo Application

This repository contains an example implementation of the PROMPT-TEST-CODE process using a todo application. The application demonstrates:

1. Feature Specifications
   - CRUD operations
   - Input validation
   - Error handling
   - State management

2. Step Contracts
   - Clear interfaces
   - No implementation details
   - Complete coverage
   - Validation rules

## Getting Started

1. Study the process:
   - Review context files
   - Understand phase separation
   - Follow gate validations

2. Examine the example:
   - Feature files show specification approach
   - Step contracts demonstrate interface design
   - Progress tracking shows phase management

## Contributing

This project aims to refine the PROMPT-TEST-CODE process. Contributions should:

1. Maintain strict phase separation
2. Follow test-first principles
3. Document all decisions
4. Respect gate validations

## License

This project is licensed under the MIT License - see the LICENSE file for details
