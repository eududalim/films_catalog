import 'package:flutter/material.dart';

import 'button_tab.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.selectTab,
  }) : super(key: key);

  final int selectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
