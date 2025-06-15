/*
* Created by Neloy on 13 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
// import 'package:mocking/main.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_git_action/case_unit/network/api/api_album.dart';
import 'package:tdd_git_action/case_unit/network/model/model_album.dart';



import 'fetch_album_test.mocks.dart';


@GenerateMocks([http.Client])
void main() {
  group("fetch album", (){
    test("album fetch successful", () async {
      final client = MockClient();

      when(
        client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')),
      ).thenAnswer(
            (_) async =>
            http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200),
      );

      expect(await fetchAlbum(client), isA<Album>());
    });

    test("album fetch fail", () async{
      final client = MockClient();

      when(
        client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')),
      ).thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchAlbum(client), throwsException);
    });
  });
}