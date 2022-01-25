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
                  final List resultList = snapshot.data!['results'];

                  return Column(
                    children: resultList.map((e) {
                      Map<String, dynamic> filmResult =
                          e as Map<String, dynamic>;

                      if (filmResult['popularity'] > 2) {
                        final filmModel = FilmModel(
                            id: filmResult['id'],
                            titlePt: filmResult['title'],
                            genres: filmResult['genre_ids'],
                            poster: filmResult['poster_path']);
                        return FilmCard(film: filmModel);
                      }

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
