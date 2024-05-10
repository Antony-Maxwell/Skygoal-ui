
import 'package:flutter/material.dart';

class KNameAndRating extends StatelessWidget {
  const KNameAndRating({
    super.key,
    required this.collegeName, required this.text,
  });

  final String collegeName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$collegeName $text',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Container(
          height: 30,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4.3', style: TextStyle(color: Colors.white),
              ),
              Icon(Icons.star, color: Colors.white, size: 18,)
            ],
          ),
        )
      ],
    );
  }
}
