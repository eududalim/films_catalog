import 'package:films_catalog/app/layers/domain/repositories/get_list_movies_by_genre_repository.dart';

import '../../entities/movie_entity.dart';
import 'get_films_by_genre_usecase.dart';

class GetListMoviesByGenreUsecaseImp implements GetListMoviesByGenreUsecase {
  final GetListMoviesByGenreRepository _getListMoviesByGenreRepository;

  GetListMoviesByGenreUsecaseImp(this._getListMoviesByGenreRepository);

  @override
  Future<List<MovieEntity>> call(String genre) =>
      _getListMoviesByGenreRepository(genre);
}
