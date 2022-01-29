import 'package:films_catalog/app/core/base_api.dart';
import 'package:films_catalog/app/model/film_model.dart';
import 'package:flutter/material.dart';

class PosterMovie extends StatelessWidget {
  const PosterMovie({
    Key? key,
    required this.film,
  }) : super(key: key);

  final FilmModel film;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 318,
      width: 216,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 1)
          ]),
      clipBehavior: Clip.hardEdge,
      child: Image.network(
        BaseApi.getUrlImage(film.poster),
        errorBuilder: (context, error, stackTrace) => Container(),
        fit: BoxFit.cover,
      ),
    );
  }
}
