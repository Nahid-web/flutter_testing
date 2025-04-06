import 'package:counter_app/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Counter counter;
  setUp(() {
    counter = Counter();
  });

  group("Counter Class -", () {
    test(
      "given counter class when it is instantiated then value of of count should be 0",
      () {
        //act
        final result = counter.count;

        //assert
        expect(result, 0);
      },
    );

    test(
      "given counter class when it is in incremented then the value of counter should be 1",
      () {
        //act
        counter.increment();
        final result = counter.count;

        //assert
        expect(result, 1);
      },
    );

    test(
      "given counter class when it is decremented then the value of counter should be -1",
      () {
        //act
        counter.decrement();
        final result = counter.count;

        //assert
        expect(result, -1);
      },
    );

    test(
      "given counter class when it is reset then the value of counter should be 0",
      () {
        //act
        counter.reset();
        final result = counter.count;

        //assert
        expect(result, 0);
      },
    );
  });
}
