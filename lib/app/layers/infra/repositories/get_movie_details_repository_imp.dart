import 'package:films_catalog/app/layers/domain/entities/movie_details_entity.dart';
import 'package:films_catalog/app/layers/domain/repositories/get_movie_details_repository.dart';

class GetMovieDetailsRepositoryImp implements GetMovieDetailsRepository {
  @override
  Future<MovieDetailsEntity> call(String idMovie) {
    return Future.delayed(
        const Duration(seconds: 2),
        () => MovieDetailsEntity(
              id: 111111,
              poster:
                  'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg',
              titlePt: 'Vigadores Ultimato Mock',
              genres: ['Ação', 'Aventura'],
              backdrop:
                  'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg',
              originalTitle: 'Avengers: Endgame ',
              releaseDate: '2020',
              runtime: 180,
              voteAvorage: 8.5,
              overview:
                  'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos.',
              productioCompanies: ['Marvel Produções'],
              budget: 20000,
            ));
  }
}
