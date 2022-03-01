class MovieEntity {
  // id do filme
  int id;

  //poster do filme
  String poster;

  //titulo em portugues
  String titlePt;

  //generos
  List genres;

  MovieEntity({
    required this.id,
    required this.poster,
    required this.titlePt,
    required this.genres,
  });
}
