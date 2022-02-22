import 'credits_movie_model.dart';

class FilmModel {
  // id do filme
  int id;
  //poster do filme
  String poster;
  // Imagem de fundo do filme
  String? backdrop;
  //titulo em portugues
  String titlePt;
  // titulo original
  String originalTitle;
  //ano de lançamento
  String releaseDate;
  //duração em minutos
  int? runtime;
  //pontuação
  double voteAvorage;
  //descrição
  String? overview;
  //generos
  List genres;
  //Produtoras
  List? productioCompanies;
  //Atores e Diretores
  CreditsMovieModel? creditsMovieModel;
  //orçamento
  int? budget;

  FilmModel(
      {required this.id,
      required this.titlePt,
      required this.genres,
      required this.poster,
      this.backdrop = '',
      this.originalTitle = '',
      this.overview = '',
      this.runtime = 0,
      this.voteAvorage = 0.0,
      this.releaseDate = '',
      this.productioCompanies,
      this.creditsMovieModel,
      this.budget = 0});

  factory FilmModel.fromJson(Map<String, dynamic> parsedJson) {
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

    return FilmModel(
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
