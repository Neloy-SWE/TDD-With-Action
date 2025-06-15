/*
* Created by Neloy on 15 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';

class WidgetScrollable extends StatelessWidget {
  final List<String> items;

  const WidgetScrollable({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scrollable Widget")),
      body: ListView.builder(
        key: const Key("scrollableList"),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              key: Key("key$index"),
              items[index],
              textDirection: TextDirection.ltr,
            ),
          );
        },
      ),
    );
  }
}
