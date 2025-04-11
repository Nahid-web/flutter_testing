// Import required packages for testing
import 'package:counter_app/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Declare a late variable to ensure Counter is initialized before use
  late Counter counter;

  // setUp runs before each test to ensure a fresh counter instance
  setUp(() {
    counter = Counter();
  });

  // Group related tests together for better organization
  group("Counter Class -", () {
    // Test 1: Initial state verification
    test(
      "given counter class when it is instantiated then value of count should be 0",
      () {
        // Act: Get the initial counter value
        final result = counter.count;

        // Assert: Verify the counter starts at 0
        expect(result, 0);
      },
    );

    // Test 2: Increment functionality
    test(
      "given counter class when it is incremented then the value of counter should be 1",
      () {
        // Act: Perform increment operation and get result
        counter.increment();
        final result = counter.count;

        // Assert: Verify the counter was incremented to 1
        expect(result, 1);
      },
    );

    // Test 3: Decrement functionality
    test(
      "given counter class when it is decremented then the value of counter should be -1",
      () {
        // Act: Perform decrement operation and get result
        counter.decrement();
        final result = counter.count;

        // Assert: Verify the counter was decremented to -1
        expect(result, -1);
      },
    );

    // Test 4: Reset functionality
    test(
      "given counter class when it is reset then the value of counter should be 0",
      () {
        // Act: Perform reset operation and get result
        counter.reset();
        final result = counter.count;

        // Assert: Verify the counter was reset to 0
        expect(result, 0);
      },
    );
  });
}
