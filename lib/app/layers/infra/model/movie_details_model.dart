import 'package:films_catalog/app/layers/domain/entities/credits_movie_entity.dart';
import 'package:films_catalog/app/layers/domain/entities/movie_details_entity.dart';

class MovieDetailsModel extends MovieDetailsEntity {
  MovieDetailsModel({
    required int id,
    required String poster,
    required String titlePt,
    required List genres,
    required String backdrop,
    required String originalTitle,
    required String releaseDate,
    required int runtime,
    required double voteAvorage,
    required String overview,
    required List productioCompanies,
    CreditsMovieEntity? creditsMovie,
    required int budget,
  }) : super(
          id: id,
          poster: poster,
          titlePt: titlePt,
          genres: genres,
          backdrop: backdrop,
          originalTitle: originalTitle,
          releaseDate: releaseDate,
          runtime: runtime,
          voteAvorage: voteAvorage,
          overview: overview,
          productioCompanies: productioCompanies,
          creditsMovie: creditsMovie,
          budget: budget,
        );

  factory MovieDetailsModel.fromJson(Map<String, dynamic> parsedJson) {
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

    return MovieDetailsModel(
      id: parsedJson['id'] ?? 00,
      poster: parsedJson['poster_path'] ?? '',
      backdrop: parsedJson['backdrop_path'] ?? '',
      genres: genresList,
      originalTitle: parsedJson['original_title'] ?? '',
      titlePt: parsedJson['title'] ?? '',
      overview: parsedJson['overview'] ?? '',
      runtime: parsedJson['runtime'] ?? 0,
      voteAvorage: parsedJson['vote_average'].toDouble() ?? 0.0,
      releaseDate: parsedJson['release_date'] ?? '',
      productioCompanies: listofProdutions,
      budget: parsedJson['budget'] ?? 0,
    );
  }
}
