/*
* Created by Neloy on 01 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/counter.dart';

void main() {
  test('Counter value should be incremented', () {
    Counter counter = Counter();
    expect(counter.value, 2);
  });
}