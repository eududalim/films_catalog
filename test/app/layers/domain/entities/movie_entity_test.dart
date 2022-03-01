import 'package:films_catalog/app/layers/domain/entities/movie_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    MovieEntity movieEntity = MovieEntity(
        id: 8888888,
        poster: 'image_url_exemple',
        titlePt: 'Transformers',
        genres: ['Ação', 'Aventura']);

    expect(movieEntity, isNotNull);
  });

  test('Espero que o título seja \'007\' ', () {
    MovieEntity movieEntity = MovieEntity(
        id: 8888888,
        poster: 'image_url_exemple',
        titlePt: '007',
        genres: ['Ação', 'Aventura']);

    expect(movieEntity.titlePt, '007');
  });

  test('Espero que a lista de genres tenha 2 valores ', () {
    MovieEntity movieEntity = MovieEntity(
        id: 8888888,
        poster: 'image_url_exemple',
        titlePt: '007',
        genres: ['Ação', 'Aventura']);

    expect(movieEntity.genres.length, 2);
  });
}
