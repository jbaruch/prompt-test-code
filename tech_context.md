# Technical Stack Decisions

## Frontend
- Framework: React
- Language: TypeScript
- State Management: React Context + Hooks
- Styling: CSS Modules
- Build Tool: Vite

## Backend
- Language: Kotlin
- Framework: Spring Boot
- Build Tool: Gradle
- Testing Framework: Cucumber + Spring Boot Test

## Testing Stack
- BDD Framework: Cucumber
- Step Definitions: Kotlin + Spring Boot Test
- Mocking: MockK
- Test Runner: JUnit Platform
- Reporting: Cucumber HTML Reports

## Development Tools
- Version Control: Git
- Code Style: ESLint + Prettier (Frontend), ktlint (Backend)
- API Documentation: OpenAPI/Swagger

## Testing Approach
1. Behavioral Testing
   - Gherkin feature files (.feature)
   - Step interfaces (contracts)
   - Step implementations
   - Scenario execution

2. Test Organization
   - Features in test/spec/features/
   - Contracts in test/spec/contracts/
   - Step implementations in test/impl/steps/

3. Test Execution
   - Cucumber JUnit Platform Engine
   - Spring Boot Test context
   - MockK for isolation

## Quality Assurance
- BDD Scenarios Coverage
- Unit Testing (where needed)
- Integration Testing
- Code Coverage Requirements: 80%+

## Initial Technical Decisions
1. Start with in-memory storage
2. Use REST for API communication
3. Implement strict type checking
4. Follow SOLID principles
5. Use dependency injection
6. Strict phase separation per .windsurfrules
