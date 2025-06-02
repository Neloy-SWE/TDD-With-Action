/*
* Created by Neloy on 01 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/counter.dart';

void main() {
  test('Counter initial value should be 0', () {
    Counter counter = Counter();
    expect(counter.value, 0);
  });
}