import 'package:flutter/material.dart';

class KContainerHeading extends StatelessWidget {
  const KContainerHeading({
    super.key, required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
