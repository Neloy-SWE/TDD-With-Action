/*
* Created by Neloy on 13 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/model_album.dart';

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}
