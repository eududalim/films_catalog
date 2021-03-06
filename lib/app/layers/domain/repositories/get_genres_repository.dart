import '../../infra/model/genres.dart';

abstract class GetGenresRepository {
  Future<List<Genres>> call();
}
