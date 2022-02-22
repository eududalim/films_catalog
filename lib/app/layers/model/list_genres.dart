import 'genres.dart';

class ListGenres {
  List<Genres>? genres = [];

  ListGenres(this.genres);

  ListGenres.fromJson(Map<String, dynamic> json) {
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(Genres.fromJson(v));
      });
    }
  }
}
