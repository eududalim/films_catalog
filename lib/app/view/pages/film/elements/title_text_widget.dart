import 'dart:developer';

import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title, required this.textList})
      : super(key: key);

  final String title;
  final List? textList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600]),
        ),
        const SizedBox(height: 8),
        Text(
          textList?[0] ?? '',
          overflow: TextOverflow.clip,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey[800]),
        ),
      ],
    );
  }
}
