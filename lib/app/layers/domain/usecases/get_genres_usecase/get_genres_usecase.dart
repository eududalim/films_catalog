import '../../../model/genres.dart';

abstract class GetGenresUseCase {
  Future<List<Genres>> call();
}
