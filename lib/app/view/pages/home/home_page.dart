import 'package:films_catalog/app/data/controller_categories.dart';
import 'package:films_catalog/app/view/pages/home/elements/films_list.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'elements/categories.dart';
import 'elements/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerFilms());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
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
              const Categories(),
              const SizedBox(height: 18),
              const FilmsList()
            ],
          ),
        ),
      ),
    );
  }
}
