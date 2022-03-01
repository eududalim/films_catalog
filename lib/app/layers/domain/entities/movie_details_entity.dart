import 'package:films_catalog/app/layers/domain/entities/movie_entity.dart';

import '../../model/credits_movie_model.dart';

class MovieDetailsEntity extends MovieEntity {
  // Imagem de fundo do filme
  String backdrop;

  // titulo original
  String originalTitle;

  //ano de lançamento
  String releaseDate;

  //duração em minutos
  int runtime;

  //pontuação
  double voteAvorage;

  //descrição
  String overview;

  //Produtoras
  List productioCompanies;

  //Atores e Diretores
  CreditsMovieModel creditsMovieModel;

  //orçamento
  int budget;

  MovieDetailsEntity({
    required int id,
    required String poster,
    required String titlePt,
    required List genres,
    required this.backdrop,
    required this.originalTitle,
    required this.releaseDate,
    required this.runtime,
    required this.voteAvorage,
    required this.overview,
    required this.productioCompanies,
    required this.creditsMovieModel,
    required this.budget,
  }) : super(id: id, poster: poster, titlePt: titlePt, genres: genres);
}
