import 'dart:convert';
import 'dart:developer';

import 'package:films_catalog/app/core/base_api.dart';
import 'package:films_catalog/app/model/genres.dart';
import 'package:films_catalog/app/model/list_genres.dart';
import 'package:http/http.dart' as http;

class ControllerGenres {
  Uri url = Uri.parse(BaseApi.genre);

  getGenres() async {
    http.Response response = await http.get(url);

    final data = json.decode(response.body) as Map<String, dynamic>;

    ListGenres listGenres = ListGenres.fromJson(data);
    List<Genres>? list = listGenres.genres?.sublist(0, 3);

    log(listGenres.genres.toString());
    log(list![2].name.toString());

    return list;
  }
}
