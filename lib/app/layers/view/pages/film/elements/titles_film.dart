import '../../../../model/film_model.dart';

import 'package:flutter/material.dart';

class TitlesFilm extends StatelessWidget {
  const TitlesFilm({
    Key? key,
    required this.film,
  }) : super(key: key);

  final FilmModel film;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          film.titlePt.toUpperCase(),
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey[800]),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Titulo original: ',
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
            Text(film.originalTitle,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 10,
                    fontWeight: FontWeight.w500))
          ],
        ),
      ],
    );
  }
}
