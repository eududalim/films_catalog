import 'package:flutter/material.dart';

class VoteAverage extends StatelessWidget {
  const VoteAverage({Key? key, required this.vote}) : super(key: key);

  final double vote;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          vote.toStringAsFixed(1),
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          '/10',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
