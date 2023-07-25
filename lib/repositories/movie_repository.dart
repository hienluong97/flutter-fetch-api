import 'dart:convert';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/movie.dart';

const getMoviesUrl = 'http://reactnative.dev/movies.json';

Future<List<Movie>> fetchMoviesData() async {
  List<Movie> movies = [];

  try {
    final response = await http.get(Uri.parse(getMoviesUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      movies =
          (json['movies'] as List).map((item) => Movie.fromJson(item)).toList();
    }
    return movies;
  } on Exception catch (e) {
    throw Exception(e);
  }
}
