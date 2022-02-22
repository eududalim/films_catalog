import 'package:flutter/material.dart';

class BoxLineGrey extends StatelessWidget {
  const BoxLineGrey({Key? key, required this.text1, required this.text2})
      : super(key: key);

  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 35,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Text(text1.toUpperCase(),
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
          Text(text2 ?? '',
              overflow: TextOverflow.clip,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
