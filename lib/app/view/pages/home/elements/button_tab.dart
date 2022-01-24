import 'package:films_catalog/app/data/controller_categories.dart';
import 'package:films_catalog/app/model/genres.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonTab extends StatelessWidget {
  const ButtonTab({Key? key, required this.index, required this.genre})
      : super(key: key);

  final int index;
  final Genres genre;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerGenres>(
        init: ControllerGenres(),
        builder: (controller) {
          bool select;

          if (controller.select == (index)) {
            select = true;
          } else {
            select = false;
          }

          return GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: select
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black12, width: 0.80)),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                genre.name ?? '',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: select ? Colors.white : Colors.black),
              ),
            ),
            onTap: () {
              controller.onTapButton(genre, index);
            },
          );
        });
  }
}
