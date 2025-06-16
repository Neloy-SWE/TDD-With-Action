/*
* Created by Neloy on 15 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';

class WidgetScrollable extends StatefulWidget {
  final List<String> items;

  const WidgetScrollable({super.key, required this.items});

  @override
  State<WidgetScrollable> createState() => _WidgetScrollableState();
}

class _WidgetScrollableState extends State<WidgetScrollable> {
  TextEditingController controllerAddItem = TextEditingController();
  String showText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scrollable Widget")),
      body: ListView.builder(
        key: const Key("scrollableList"),
        padding: EdgeInsets.all(25),
        itemCount: widget.items.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  key: const Key("addTextField"),
                  controller: controllerAddItem,
                ),
                SizedBox(height: 10),
                Text(
                  showText,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
              ],
            );
          } else {
            return Dismissible(
              key: Key("dismiss${index-1}"),
              child: ListTile(
              title: Text(
                key: Key("key${index - 1}"),
                widget.items[index - 1],
                textDirection: TextDirection.ltr,
              ),
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showText = controllerAddItem.text;
            controllerAddItem.clear();
          });
        },
        child: Icon(Icons.file_upload_outlined),
      ),
    );
  }
}
