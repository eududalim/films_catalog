import '../entities/movie_entity.dart';

abstract class GetListMoviesByGenreRepository {
  Future<List<MovieEntity>> call(String genre);
}
