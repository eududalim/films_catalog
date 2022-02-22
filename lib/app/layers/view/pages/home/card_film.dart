import '../../../../core/utils/base_api.dart';
import '../../../controllers/controller_categories.dart';
import '../../../model/film_model.dart';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({Key? key, required this.film}) : super(key: key);

  final FilmModel film;
  @override
  Widget build(BuildContext context) {
    ControllerFilms controllerGenres = Get.find();

    String _text = '';

    if (film.genres.length >= 2) {
      _text =
          '${controllerGenres.genresMap[film.genres[0]]} - ${controllerGenres.genresMap[film.genres[1]]}';
    }
    if (film.genres.length == 1) {
      _text = '${controllerGenres.genresMap[film.genres[0]]}';
    }

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 8,
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 470,
            foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black12,
                  Colors.black87,
                  Colors.black
                ])),
            child: Image.network(
              BaseApi.getUrlImage(film.poster),
              errorBuilder: (context, error, stackTrace) => Container(),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  film.titlePt.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  _text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
