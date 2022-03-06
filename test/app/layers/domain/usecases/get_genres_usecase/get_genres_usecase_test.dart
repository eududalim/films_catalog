import 'package:films_catalog/app/layers/domain/repositories/get_genres_repository.dart';
import 'package:films_catalog/app/layers/domain/usecases/get_genres_usecase/get_genres_usecase.dart';
import 'package:films_catalog/app/layers/domain/usecases/get_genres_usecase/get_genres_usecase_imp.dart';
import 'package:films_catalog/app/layers/infra/model/genres.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

class GetGenresRepositoryMock implements GetGenresRepository {
  @override
  Future<List<Genres>> call() => Future.delayed(
      const Duration(seconds: 2),
      () => [
            Genres(id: 111111, name: 'Ação'),
            Genres(id: 222222, name: 'Comedia'),
          ]);
}

void main() {
  GetGenresRepository _repository = GetGenresRepositoryMock();

  test('Must search for movie genres in the repository and return them',
      () async {
    GetGenresUseCase _usecase = GetGenresUsecaseImp(_repository);

    var listGenres = await _usecase();

    expect(listGenres, isInstanceOf<List<Genres>>());
  });

  test('Checks if it correctly fetched the data from the repository.',
      () async {
    GetGenresUseCase _usecase = GetGenresUsecaseImp(_repository);

    List<Genres> listGenres = await _usecase();
    Genres genre = Genres(id: 111111, name: 'Ação');

    expect(listGenres[0].id, genre.id);

    expect(listGenres[0].name, genre.name);
  });
}
