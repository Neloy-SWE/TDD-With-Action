/*
* Created by Neloy on 14 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/case_widget/widget_simple.dart';

void main() {
  testWidgets("Simple widget check with title and message", (tester) async {
    await tester.pumpWidget(
      WidgetSimple(title: "Hello world", message: "Testing simple widget"),
    );

    final checkTitle = find.text("Hello world");
    final checkMessage = find.text("Testing simple widget");

    expect(checkTitle, findsOneWidget);
    expect(checkMessage, findsOneWidget);
  });
}
