import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  const ButtonTab({Key? key, required this.select, required this.textTab})
      : super(key: key);

  final bool select;
  final String textTab;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: select ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Colors.black12, width: 0.80)),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        textTab,
        style: TextStyle(
            fontWeight: FontWeight.w300,
            color: select ? Colors.white : Colors.black),
      ),
    );
  }
}
