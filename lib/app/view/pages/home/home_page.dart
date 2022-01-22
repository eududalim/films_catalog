import 'package:flutter/material.dart';

import 'elements/button_tab.dart';
import 'elements/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectTab = 1;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                Container(
                  height: 28,
                  alignment: Alignment.center,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        index++;

                        final categories = {
                          1: 'Ação',
                          2: 'Aventura',
                          3: 'Fantasia',
                          4: 'Comédia'
                        };

                        bool select = false;
                        if (selectTab == (index)) {
                          select = true;
                        } else {
                          select = false;
                        }

                        return ButtonTab(
                          select: select,
                          textTab: categories[index] ?? '',
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
