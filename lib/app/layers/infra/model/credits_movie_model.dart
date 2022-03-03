import 'package:films_catalog/app/layers/domain/entities/credits_movie_entity.dart';

class CreditsMovieModel extends CreditsMovieEntity {
  CreditsMovieModel({
    required List crew,
    required List director,
  }) : super(crew: crew, director: director);

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
