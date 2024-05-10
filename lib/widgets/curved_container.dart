
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class KCurvedHeaderContainer extends StatelessWidget {
  const KCurvedHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: KColors.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      padding: const EdgeInsets.all(0),
      child: child,
    );
  }
}
