class CreditsMovieModel {
  //Lista de Diretores
  List? director;
  //Lista de Elenco
  List? crew;

  CreditsMovieModel({
    required this.director,
    required this.crew,
  });

  factory CreditsMovieModel.fromMap(Map<String, dynamic> map) {
    List _listCast = map['cast']!;
    List<String>? _listActors = [];

    ///adiciona a variavel temporaria nome dos atores
    ///com popularidade acima de 10
    _listCast.map((e) {
      if (e['known_for_department'] == 'Acting') {
        if (e['popularity'] > 10) {
          _listActors.add(e['name']);
        }
      }
    });

    List? _listCrew = map['crew'];
    List<String>? _listDirector = [];

    ///adiciona a variavel temporaria nome dos diretores
    _listCrew?.map((e) {
      if (e['job'] == 'Director') {
        _listDirector.add(e['name']);
      }
    });

    return CreditsMovieModel(crew: _listActors, director: _listDirector);
  }
}
