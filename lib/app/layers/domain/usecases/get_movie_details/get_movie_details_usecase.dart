import 'package:films_catalog/app/layers/domain/entities/movie_details_entity.dart';

abstract class GetMovieDetailsUsecase {
  Future<MovieDetailsEntity> call(String idMovie);
}
