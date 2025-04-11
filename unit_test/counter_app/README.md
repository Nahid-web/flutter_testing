# Flutter Counter App with Unit Testing

This is a demonstration project showcasing comprehensive unit testing in Flutter. The project implements a simple counter application with basic functionality and extensive unit tests to demonstrate testing best practices.

## Project Overview

The Counter App demonstrates:
- Basic state management using a Counter class
- Comprehensive unit testing implementation in Flutter
- Test-driven development (TDD) practices
- Best practices for test organization and structure

## Counter Implementation

The core functionality is implemented in the `Counter` class with the following features:

- `increment()`: Increases the counter value by 1
- `decrement()`: Decreases the counter value by 1
- `reset()`: Resets the counter value to 0
- `count`: Getter to access the current counter value

## Unit Testing in Detail

### Test Structure

The project follows a well-organized test structure in `test/counter_test.dart`:

```dart
group('Counter Tests', () {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  // Test cases...
});
```

### Test Cases

The test suite includes comprehensive test cases:

1. Initial State
   - Verifies counter initializes with value 0
   - Tests the initial state setup in setUp method

2. Increment Operation
   - Validates counter correctly increments by 1
   - Tests multiple increment operations
   - Verifies state after increment

3. Decrement Operation
   - Ensures counter correctly decrements by 1
   - Tests multiple decrement operations
   - Validates behavior when reaching 0

4. Reset Operation
   - Confirms counter successfully resets to 0
   - Tests reset from various starting values
   - Verifies state after reset

### Testing Best Practices

1. Test Organization
   - Use descriptive test names
   - Group related tests using `group()`
   - Implement `setUp()` for common test initialization
   - Use `tearDown()` for cleanup when needed

2. Assertions
   - Use specific assertions (e.g., `expect()`, `equals()`)
   - Test edge cases and boundary conditions
   - Include negative test cases

3. Test Coverage
   - Aim for comprehensive code coverage
   - Test both success and failure scenarios
   - Include edge cases in test suite

## Project Structure

```
lib/
  ├── counter.dart    # Core Counter class implementation
  └── main.dart       # Main Flutter application

test/
  └── counter_test.dart  # Unit tests for Counter class
```

## Running Tests

### Basic Test Execution
```bash
flutter test
```

### Test with Coverage
```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

### Watch Mode for TDD
```bash
flutter test --watch
```

## Development Setup

1. Ensure Flutter is installed and set up on your system
2. Clone the repository
3. Run `flutter pub get` to install dependencies
4. Use `flutter run` to start the application
5. Run tests using commands in the Testing section

## Learning Points

- Implementation of unit tests in Flutter using the test package
- Effective use of `test` and `group` functions for organizing tests
- Proper test setup using `setUp` and `tearDown` functions
- Writing clear and maintainable assertions with `expect`
- Test-driven development workflow in Flutter
- Understanding test coverage and its importance
- Handling edge cases and error conditions in tests
- Best practices for writing maintainable test suites
