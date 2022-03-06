import '../../domain/repositories/get_genres_repository.dart';
import '../model/genres.dart';

class GetGenresRepositoryImp implements GetGenresRepository {
  @override
  Future<List<Genres>> call() => Future.delayed(
      const Duration(seconds: 2),
      () => [
            Genres(id: 111111, name: 'Ação'),
            Genres(id: 222222, name: 'Comedia'),
          ]);
}
