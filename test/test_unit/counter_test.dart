/*
* Created by Neloy on 01 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/case_unit/counter.dart';

void main() {
  test('Counter initial value should be 0', () {
    Counter counter = Counter();
    expect(counter.value, 0);
  });
  group("check method: increment, decrement", (){
    // Counter counter = Counter();
    test("check method: increment", (){
      Counter counter = Counter();
      expect(counter.value, 0);

      counter.increment();
      expect(counter.value, 1);

      counter.increment();
      expect(counter.value, 2);
    });

    test("check method: decrement", (){
      Counter counter = Counter();
      expect(counter.value, 0);

      counter.decrement();
      expect(counter.value, -1);

      counter.decrement();
      expect(counter.value, -2);
    });
  });

}