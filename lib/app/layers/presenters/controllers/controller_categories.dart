import 'dart:async';
import 'dart:convert';

import 'package:films_catalog/app/layers/infra/model/movie_details_model.dart';

import '../../../core/utils/base_api.dart';
import '../../infra/model/credits_movie_model.dart';
import '../../infra/model/movie_model.dart';
import '../../infra/model/genres.dart';
import '../../infra/model/list_genres.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ControllerFilms extends GetxController {
  Uri url = Uri.parse(BaseApi.apiGenres);

  final _searchResult = StreamController<Map<String, dynamic>>();

  Stream<Map<String, dynamic>> get outSearchResult => _searchResult.stream;

  Map<int, String> genresMap = {};

  int select = 0;

  ControllerFilms() {
    initResults();
  }

  ///Função para buscar primeiros resultados
  initResults() {
    getResults().then((value) {
      _searchResult.sink.add(value);
    });
  }

//Função de busca a lista de generos disponiveis
  Future<List<Genres>> getGenres() async {
    http.Response response = await http.get(url);
    final data = json.decode(response.body) as Map<String, dynamic>;
    ListGenres _listGenres = ListGenres.fromJson(data);
    List<Genres> list = _listGenres.genres!.sublist(0, 4);
    _searchResult.sink.add(await getResults(query: list[select].name));
    _listMap(_listGenres.genres!);
    update();
    return list;
  }

//Cria um Map com os ids e nomes das categorias
  void _listMap(List<Genres> list) {
    for (var genre in list) {
      genresMap.addAll({genre.id: genre.name});
    }
  }

  //Função chamada ao clicar botão de categoria
  onTapButton(Genres genre, int index) async {
    select = index;
    _searchResult.sink.add(await getResults(query: genre.name));
    update();
  }

  //Função que busca resultados usando query
  Future<Map<String, dynamic>> getResults({String? query}) async {
    query ??= 'Ação';
    Uri uri = Uri.parse(BaseApi.search(query));
    http.Response response = await http.get(uri);
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    update();
    return data;
  }

  ///Obtem os detalhes do filme usando id
  Future<MovieDetailsModel> getDetailsFilm(int id) async {
    Uri uri = Uri.parse(BaseApi.getDetailsMovie(id));

    http.Response response = await http.get(uri);

    final data = jsonDecode(response.body) as Map<String, dynamic>;

    MovieDetailsModel filmModel = MovieDetailsModel.fromJson(data);

    filmModel.creditsMovie = await getCreditsFilm(id);

    return filmModel;
  }

  ///Retorna os Diretores e Elenco do filme usando apenas id
  Future<CreditsMovieModel> getCreditsFilm(int id) async {
    Uri uri = Uri.parse(BaseApi.getCreditsMovie(id));

    http.Response response = await http.get(uri);

    final data = jsonDecode(response.body) as Map<String, dynamic>;

    CreditsMovieModel? creditsMovieModel = CreditsMovieModel.fromMap(data);

    return creditsMovieModel;
  }

  /// Recebe o tempo em minutos (int) e retorna em horas (Lista de Strings)
  List<String> minutesToHours(int minutes) {
    String hours = '';
    hours = (minutes / 60).toStringAsFixed(2);
    return hours.split('.');
  }
}
