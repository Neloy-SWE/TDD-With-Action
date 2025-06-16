/*
* Created by Neloy on 15 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_git_action/case_widget/widget_scrollable.dart';

void main() {
  group("Check items from scrollable widget", () {
    // testWidgets("Outside of list", (tester) async {
    //   await tester.pumpWidget(
    //     MaterialApp(
    //       home: WidgetScrollable(
    //         items: List<String>.generate(100, (i) => 'Item $i'),
    //       ),
    //     ),
    //   );
    //
    //   final textFieldFinder = find.byKey(const Key("addTextField"));
    //   final textFieldScrollableFinder = find.descendant(
    //     of: textFieldFinder,
    //     matching: find.byType(Scrollable),
    //   );
    //   final RenderObject? textFieldScrollableRenderObject =
    //   textFieldScrollableFinder.evaluate().isNotEmpty
    //       ? tester.renderObject(textFieldScrollableFinder.first)
    //       : null;
    //   final listFinder = find.byWidgetPredicate((Widget widget) {
    //     if (widget is Scrollable) {
    //       final RenderObject currentScrollableRenderObject = tester
    //           .renderObject(find.byWidget(widget));
    //       return currentScrollableRenderObject !=
    //           textFieldScrollableRenderObject;
    //     }
    //     return false;
    //   });
    //   expect(listFinder, findsOneWidget);
    //   final itemFinder = find.byKey(const ValueKey('key110'));
    //
    //   await tester.scrollUntilVisible(
    //     itemFinder,
    //     500.0,
    //     scrollable: listFinder,
    //   );
    //
    //   expect(itemFinder, findsOneWidget);
    // });

    testWidgets("inside of list", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WidgetScrollable(
            items: List<String>.generate(100, (i) => 'Item $i'),
          ),
        ),
      );

      final textFieldFinder = find.byKey(const Key("addTextField"));
      final textFieldScrollableFinder = find.descendant(
        of: textFieldFinder,
        matching: find.byType(Scrollable),
      );
      final RenderObject? textFieldScrollableRenderObject =
          textFieldScrollableFinder.evaluate().isNotEmpty
          ? tester.renderObject(textFieldScrollableFinder.first)
          : null;
      final listFinder = find.byWidgetPredicate((Widget widget) {
        if (widget is Scrollable) {
          final RenderObject currentScrollableRenderObject = tester
              .renderObject(find.byWidget(widget));
          return currentScrollableRenderObject !=
              textFieldScrollableRenderObject;
        }
        return false;
      });
      expect(listFinder, findsOneWidget);
      final itemToScrollToFinder = find.byKey(const Key('key50'));
      await tester.scrollUntilVisible(
        itemToScrollToFinder,
        500.0,
        scrollable: listFinder,
      );
      expect(itemToScrollToFinder, findsOneWidget);
    });

    // testWidgets("large scroll", (tester) async {
    //   await tester.pumpWidget(
    //     MaterialApp(
    //       home: WidgetScrollable(
    //         items: List<String>.generate(100, (i) => 'Item $i'),
    //       ),
    //     ),
    //   );
    //   final textFieldFinder = find.byKey(const Key("addTextField"));
    //   final textFieldScrollableFinder = find.descendant(
    //     of: textFieldFinder,
    //     matching: find.byType(Scrollable),
    //   );
    //   final RenderObject? textFieldScrollableRenderObject =
    //   textFieldScrollableFinder.evaluate().isNotEmpty
    //       ? tester.renderObject(textFieldScrollableFinder.first)
    //       : null;
    //   final listFinder = find.byWidgetPredicate((Widget widget) {
    //     if (widget is Scrollable) {
    //       final RenderObject currentScrollableRenderObject = tester
    //           .renderObject(find.byWidget(widget));
    //       return currentScrollableRenderObject !=
    //           textFieldScrollableRenderObject;
    //     }
    //     return false;
    //   });
    //   expect(listFinder, findsOneWidget);
    //   final itemFinder = find.byKey(const ValueKey('key50'));
    //
    //   await tester.scrollUntilVisible(
    //     itemFinder,
    //     50000,
    //     scrollable: listFinder,
    //   );
    //
    //   expect(itemFinder, findsOneWidget);
    // });

    testWidgets("small scroll", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: WidgetScrollable(
            items: List<String>.generate(100, (i) => 'Item $i'),
          ),
        ),
      );

      final textFieldFinder = find.byKey(const Key("addTextField"));
      final textFieldScrollableFinder = find.descendant(
        of: textFieldFinder,
        matching: find.byType(Scrollable),
      );
      final RenderObject? textFieldScrollableRenderObject =
          textFieldScrollableFinder.evaluate().isNotEmpty
          ? tester.renderObject(textFieldScrollableFinder.first)
          : null;
      final listFinder = find.byWidgetPredicate((Widget widget) {
        if (widget is Scrollable) {
          final RenderObject currentScrollableRenderObject = tester
              .renderObject(find.byWidget(widget));
          return currentScrollableRenderObject !=
              textFieldScrollableRenderObject;
        }
        return false;
      });
      expect(listFinder, findsOneWidget);
      final itemFinder = find.byKey(const ValueKey('key50'));

      await tester.scrollUntilVisible(
        itemFinder,
        100.0,
        scrollable: listFinder,
        maxScrolls: 100000,
      );

      expect(itemFinder, findsOneWidget);
    });
  });
}
