/*
* Created by Neloy on 01 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:tdd_git_action/case_widget/widget_scrollable.dart';

import 'case_unit/network/api/api_album.dart';
import 'case_unit/network/model/model_album.dart';

void main() {
  runApp(MaterialApp(title: "Testing practice", home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Album")),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (builder) => WidgetScrollable(
                items: List<String>.generate(50, (i) => 'Item $i'),
              ),
            ),
          );
        },
        child: Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
