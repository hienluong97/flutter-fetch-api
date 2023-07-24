import 'dart:convert';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

const getMoviesUrl = 'http://reactnative.dev/movies.json';

void fetchMoviesData() async {
  final response = await http.get(Uri.parse(getMoviesUrl));

  if (response.statusCode == 200) {
    Map<String, dynamic> json = jsonDecode(response.body);
    print(json);
  }
}
