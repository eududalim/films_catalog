import 'package:films_catalog/app/layers/domain/entities/movie_details_entity.dart';
import 'package:films_catalog/app/layers/domain/repositories/get_movie_details.repository.dart';
import 'package:films_catalog/app/layers/domain/usecases/get_movie_details/get_movie_details_usecase.dart';

class GetMovieDetailsUsecaseImp implements GetMovieDetailsUsecase {
  final GetMovieDetailsRepository _getMovieDetailsRepository;

  GetMovieDetailsUsecaseImp(this._getMovieDetailsRepository);

  @override
  Future<MovieDetailsEntity> call(String idMovie) =>
      _getMovieDetailsRepository(idMovie);
}
