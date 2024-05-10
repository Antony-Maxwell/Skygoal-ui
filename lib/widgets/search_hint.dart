import 'package:flutter/material.dart';

class KSearchHint extends StatelessWidget {
  const KSearchHint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Search in 600 colleges around!',
      style: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }
}
