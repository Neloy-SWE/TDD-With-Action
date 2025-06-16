/*
* Created by Neloy on 16 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/case_widget/widget_scrollable.dart';

void main() {
  testWidgets("Check enter text, tap, drag", (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: WidgetScrollable(
          items: List<String>.generate(100, (i) => 'Item $i'),
        ),
      ),
    );

    await tester.enterText(find.byType(TextField), "Hello");

    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    expect(find.text("Hello"), findsOneWidget);

    final itemFinder = find.byKey(const ValueKey('key0'));
    expect(itemFinder, findsOneWidget);

    // await tester.drag(find.byType(Dismissible), const Offset(500, 0));
    await tester.drag(find.byKey(Key("dismiss0")), const Offset(500, 0));
    await tester.pumpAndSettle();
    expect(itemFinder, findsNothing);
  });
}
