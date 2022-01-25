import 'package:films_catalog/app/data/controller_categories.dart';
import 'package:films_catalog/app/model/genres.dart';
import 'package:flutter/material.dart';

import 'button_tab.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  //final controllerCategories = ControllerGenres();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ControllerGenres().getGenres(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final list = snapshot.data as List<Genres>;
            return Container(
              height: 28,
              alignment: Alignment.center,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ButtonTab(
                      index: index,
                      genre: list[index],
                    );
                  }),
            );
          }
          return Container();
        });
  }
}
