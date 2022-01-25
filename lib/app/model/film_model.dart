class FilmModel {
  // id do filme
  int id;
  //poster do filme
  String poster;
  // Imagem de fundo do filme
  String backdrop;
  //titulo em portugues
  String titlePt;
  // titulo original
  String originalTitle;
  //ano de lançamento
  String releaseDate;
  //duração em minutos
  String runtime;
  //pontuação
  double voteAvorage;
  //descrição
  String overview;
  //generos
  List genres;

  FilmModel({
    required this.id,
    required this.titlePt,
    required this.genres,
    required this.poster,
    this.backdrop = '',
    this.originalTitle = '',
    this.overview = '',
    this.runtime = '',
    this.voteAvorage = 0,
    this.releaseDate = '',
  });

  factory FilmModel.fromJson(Map<String, dynamic> parsedJson) {
    return FilmModel(
        id: parsedJson['id'] ?? '',
        poster: parsedJson['poster_path'] ?? '',
        backdrop: parsedJson['backdrop_path'] ?? '',
        genres: parsedJson['genres'] ?? '',
        originalTitle: parsedJson['original_title'] ?? '',
        titlePt: parsedJson['title'] ?? '',
        overview: parsedJson['overview'] ?? '',
        runtime: parsedJson['runtime'] ?? '',
        voteAvorage: parsedJson['vote_average'] ?? '',
        releaseDate: parsedJson['release_date'] ?? '');
  }
}
