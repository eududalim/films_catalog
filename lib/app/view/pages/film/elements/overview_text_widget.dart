import 'package:films_catalog/app/model/film_model.dart';
import 'package:flutter/material.dart';

class OverviewTextWidget extends StatelessWidget {
  const OverviewTextWidget({Key? key, required this.film}) : super(key: key);

  final FilmModel film;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Descrição',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600]),
        ),
        const SizedBox(height: 8),
        Text(
          film.overview.toString(),
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey[800]),
        )
      ],
    );
  }
}
