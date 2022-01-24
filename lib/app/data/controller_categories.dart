import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:films_catalog/app/core/base_api.dart';
import 'package:films_catalog/app/model/genres.dart';
import 'package:films_catalog/app/model/list_genres.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ControllerGenres extends GetxController {
  Uri url = Uri.parse(BaseApi.apiGenres);

  Map<String, dynamic> searchResult = {};

  int select = 0;

//Função de busca a lista de generos disponiveis
  Future<List<Genres>?>? getGenres() async {
    http.Response response = await http.get(url);

    final data = json.decode(response.body) as Map<String, dynamic>;

    ListGenres listGenres = ListGenres.fromJson(data);
    List<Genres>? list = listGenres.genres?.sublist(0, 4);

    searchResult = await getResults(query: list![select].name ?? '');

    update();
    return list;
  }

  //Função chamada ao clicar botão de categoria
  onTapButton(Genres genre, int index) async {
    select = index;
    log(genre.name ?? '');

    searchResult = await getResults(query: genre.name!);

    update();
  }

  //Função que busca resultados usando query
  Future<Map<String, dynamic>> getResults({String query = 'Ação'}) async {
    Uri uri = Uri.parse(BaseApi.search(query));

    http.Response response = await http.get(uri);

    final data = jsonDecode(response.body) as Map<String, dynamic>;

    searchResult = data;

    return data;
  }
}
