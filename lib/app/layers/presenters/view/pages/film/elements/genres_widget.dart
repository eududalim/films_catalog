import '../../../../../infra/model/movie_details_model.dart';
import 'package:flutter/material.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({Key? key, required this.film}) : super(key: key);

  final MovieDetailsModel film;

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: film.genres.map((item) {
          i++;
          if (i >= 3) {
            return Container();
          }
          return Container(
            height: 30,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(left: 12),
            child: Text(
              item.toString().toUpperCase(),
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w600),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[200]!, width: 1)),
          );
        }).toList());
  }
}
