import 'dart:developer';

import 'package:films_catalog/app/data/controller_categories.dart';
import 'package:films_catalog/app/model/film_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../card_film.dart';

class FilmsList extends StatelessWidget {
  const FilmsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerGenres>(
        init: ControllerGenres(),
        builder: (controller) {
          return FutureBuilder<Map<String, dynamic>>(
              future: controller.getResults(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final list = snapshot.data!['results'];

                  return ListView(
                    children: list.map((e) {
                      log(e.runtimeType.toString());
                      // final filmModel = FilmModel.fromJson(e);
                      return Container();
                    }).toList(),
                  );
                }
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('Erro ao carregar dados'),
                  );
                }
                return Stack(
                  children: const [
                    //FilmCard(),
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                );
              });
        });
  }
}
