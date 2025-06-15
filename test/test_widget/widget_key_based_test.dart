/*
* Created by Neloy on 15 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/case_widget/widget_key_based.dart';

void main() {
  testWidgets("Check widget based on keys", (tester) async {
    await tester.pumpWidget(WidgetKeyBased());

    expect(find.byKey(ValueKey("keyBasedWidget")), findsOneWidget);
  });
}
