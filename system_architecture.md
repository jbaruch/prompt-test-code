# System Architecture

## Core Architecture

### Domain Layer
- Todo entity
- Value objects for todo properties
- Domain services for business logic
- Pure Kotlin domain model

### Application Layer
- Use cases mapped to scenarios
- Input/Output ports
- No framework dependencies
- Pure business logic

### Infrastructure Layer
- REST controllers
- Repository implementations
- Framework configurations
- External integrations

### Test Architecture
- BDD layer (Gherkin features)
- Step definition layer
- Domain layer
- Infrastructure layer

## Component Structure

### Feature Specifications
- Gherkin feature files
- Step interfaces (contracts)
- Ubiquitous language
- Business-readable scenarios

### Step Definitions
- Scenario implementation
- Spring context integration
- Dependency injection
- State management

### Domain Components
- Todo management
- Validation logic
- Business rules
- Pure domain logic

### Infrastructure Components
- REST endpoints
- Data persistence
- Cross-cutting concerns
- Technical services

## Design Patterns

### Testing Patterns
1. Behavioral Specification
   - Given-When-Then structure
   - Declarative scenarios
   - Business language
   - Living documentation

2. Step Pattern
   - Interface contracts
   - Implementation separation
   - Dependency injection
   - State isolation

3. Clean Architecture
   - Domain-centric design
   - Framework independence
   - Dependency inversion
   - Clear boundaries

### Implementation Patterns
1. Repository Pattern
2. Command Pattern
3. Factory Pattern
4. Strategy Pattern

## Cross-Cutting Concerns
1. Error handling
2. Validation
3. Logging
4. Testing infrastructure
