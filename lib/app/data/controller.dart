import 'dart:convert';
import 'dart:developer';

import 'package:films_catalog/app/core/base_api.dart';
import 'package:http/http.dart' as http;

class Controller {
  String _search = '';

  Uri url = Uri.dataFromString(BaseApi.genre);

  Future<String> getFilms() async {
    http.Response response = await http.get(url);

    log(json.decode(response.body));

    return json.decode(response.body);
  }

  Controller() {
    getFilms();
  }
}
