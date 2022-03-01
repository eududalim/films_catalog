import '../../entities/movie_entity.dart';

abstract class GetListFilmsByGenresUsecase {
  Future<List<MovieEntity>> call(String genre);
}
