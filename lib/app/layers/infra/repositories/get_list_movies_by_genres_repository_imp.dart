import 'package:films_catalog/app/layers/domain/entities/movie_entity.dart';
import 'package:films_catalog/app/layers/domain/repositories/get_list_movies_by_genre_repository.dart';
import 'package:films_catalog/app/layers/infra/model/movie_model.dart';

class GetListMoviesByGenresRepositoryImp
    implements GetListMoviesByGenreRepository {
  //MOCK
  @override
  Future<List<MovieEntity>> call(String genre) => Future.delayed(
      const Duration(seconds: 2),
      () => [
            MovieModel(
                id: 111111,
                poster:
                    'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg',
                titlePt: 'Filme Teste 1',
                genres: ['Aventura']),
            MovieModel(
                id: 222222,
                poster:
                    'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg',
                titlePt: 'Filme Teste 2',
                genres: ['Ação']),
            MovieModel(
                id: 333333,
                poster:
                    'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg',
                titlePt: 'Filme Teste 3',
                genres: ['Drama'])
          ]);
}
