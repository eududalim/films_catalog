import '../../entities/movie_entity.dart';
import '../../usecases/get_films_by_genres/get_films_by_genres_usecase.dart';

class GetListFilmsByGenresUsecaseImp implements GetListFilmsByGenresUsecase {
  @override
  Future<List<MovieEntity>> call(String genre) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
