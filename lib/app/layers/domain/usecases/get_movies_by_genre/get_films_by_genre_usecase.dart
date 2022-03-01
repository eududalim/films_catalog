import '../../entities/movie_entity.dart';

abstract class GetListMoviesByGenreUsecase {
  Future<List<MovieEntity>> call(String genre);
}
