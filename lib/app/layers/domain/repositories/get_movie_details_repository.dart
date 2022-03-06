import '../entities/movie_details_entity.dart';

abstract class GetMovieDetailsRepository {
  Future<MovieDetailsEntity> call(String idMovie);
}
