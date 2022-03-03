import 'package:films_catalog/app/layers/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel({
    required int id,
    required String poster,
    required String titlePt,
    required List genres,
  }) : super(id: id, poster: poster, titlePt: titlePt, genres: genres);

  factory MovieModel.fromJson(Map<String, dynamic> parsedJson) {
    List? list = parsedJson['production_companies'];
    List? listofProdutions = [];
    list?.forEach((item) {
      listofProdutions.add(item['name']);
    });

    List _list = [];
    List genresList = [];
    if (parsedJson['genre_ids'] == null) {
      _list = parsedJson['genres'] ?? [];
      for (var element in _list) {
        genresList.add(element['name']);
      }
    } else {
      genresList = parsedJson['genre_ids'];
    }

    return MovieModel(
      id: parsedJson['id'] ?? 00,
      poster: parsedJson['poster_path'] ?? '',
      genres: genresList,
      titlePt: parsedJson['title'] ?? '',
    );
  }
}
