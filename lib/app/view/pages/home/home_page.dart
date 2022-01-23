import 'package:films_catalog/app/data/controller.dart';
import 'package:films_catalog/app/view/pages/home/card_film.dart';
import 'package:flutter/material.dart';
import 'elements/categories.dart';
import 'elements/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controller();

    int selectTab = 1;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Text(
                    'Filmes',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  height: 60,
                  alignment: Alignment.centerLeft,
                ),
                const SearchButton(),
                const SizedBox(height: 18),
                Categories(selectTab: selectTab),
                const SizedBox(height: 18),
                FilmCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
