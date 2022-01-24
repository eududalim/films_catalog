import 'package:films_catalog/app/model/film_model.dart';
import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({Key? key, required this.film}) : super(key: key);

  final FilmModel film;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 8,
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 450,
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
          film.backdrop,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
