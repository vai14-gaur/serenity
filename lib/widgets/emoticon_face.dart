import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoji;

  const EmoticonFace({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple[400],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      child: Center(
        child: Text(
          emoji,
          style: const TextStyle(
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
