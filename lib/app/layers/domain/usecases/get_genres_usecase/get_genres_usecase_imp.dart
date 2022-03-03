import 'package:films_catalog/app/layers/domain/repositories/get_genres_repository.dart';
import 'package:films_catalog/app/layers/domain/usecases/get_genres_usecase/get_genres_usecase.dart';

import '../../../infra/model/genres.dart';

class GetGenresUsecaseImp implements GetGenresUseCase {
  final GetGenresRepository _getGenresRepository;

  GetGenresUsecaseImp(this._getGenresRepository);

  @override
  Future<List<Genres>> call() => _getGenresRepository();
}
