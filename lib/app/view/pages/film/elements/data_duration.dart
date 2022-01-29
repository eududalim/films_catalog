import 'package:films_catalog/app/model/film_model.dart';
import 'package:flutter/material.dart';

import 'grey_box_info.dart';

class DataDuration extends StatelessWidget {
  const DataDuration({Key? key, required this.film, required this.duration})
      : super(key: key);

  final FilmModel film;
  final List<String> duration;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GreyBoxInfo(
          text1: 'Ano: ',
          text2: film.releaseDate.substring(0, 4),
        ),
        const SizedBox(width: 12),
        GreyBoxInfo(
          text1: 'Duração: ',
          text2: duration[0] + 'h ' + duration[1] + ' min',
        ),
      ],
    );
  }
}
