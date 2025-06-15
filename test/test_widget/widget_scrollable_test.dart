/*
* Created by Neloy on 15 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/case_widget/widget_scrollable.dart';

void main() {
  group("Check items from scrollable widget", () {
    testWidgets("Outside of list", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WidgetScrollable(
            items: List<String>.generate(100, (i) => 'Item $i'),
          ),
        ),
      );

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey('key110'));

      await tester.scrollUntilVisible(
        itemFinder,
        500.0,
        scrollable: listFinder,
      );

      expect(itemFinder, findsOneWidget);
    });

    testWidgets("inside of list", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WidgetScrollable(
            items: List<String>.generate(100, (i) => 'Item $i'),
          ),
        ),
      );

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey('key50'));

      await tester.scrollUntilVisible(
        itemFinder,
        500.0,
        scrollable: listFinder,
      );

      expect(itemFinder, findsOneWidget);
    });

    testWidgets("large scroll", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WidgetScrollable(
            items: List<String>.generate(100, (i) => 'Item $i'),
          ),
        ),
      );

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey('key50'));

      await tester.scrollUntilVisible(
        itemFinder,
        50000,
        scrollable: listFinder,
      );

      expect(itemFinder, findsOneWidget);
    });

    testWidgets("small scroll", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WidgetScrollable(
            items: List<String>.generate(100, (i) => 'Item $i'),
          ),
        ),
      );

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byKey(const ValueKey('key50'));

      await tester.scrollUntilVisible(
        itemFinder,
        10.0,
        scrollable: listFinder,
        maxScrolls: 100000,
      );

      expect(itemFinder, findsOneWidget);
    });
  });
}
