import 'dart:developer';

import 'package:films_catalog/app/data/controller_categories.dart';
import 'package:films_catalog/app/model/film_model.dart';
import 'package:films_catalog/app/view/pages/film/details_movie_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../card_film.dart';

class FilmsList extends StatelessWidget {
  const FilmsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerFilms>(builder: (_) {
      return StreamBuilder<Map<String, dynamic>>(
        stream: _.outSearchResult,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar dados'),
            );
          }
          final List resultList = snapshot.data!['results'];

          return Column(
            children: resultList.map((e) {
              Map<String, dynamic> filmResult = e as Map<String, dynamic>;

              if (filmResult['popularity'] > 5) {
                final filmModel = FilmModel.fromJson(filmResult);
                log('[FILMMODEL] ' + filmModel.titlePt);

                return GestureDetector(
                  child: FilmCard(film: filmModel),
                  onTap: () => Get.to(DetailsMoviePage(
                    id: filmModel.id,
                  )),
                );
              }

              return Container();
            }).toList(),
          );
        },
      );
    });
  }
}
