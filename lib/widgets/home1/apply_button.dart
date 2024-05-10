
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class KApplyButton extends StatelessWidget {
  const KApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration:const BoxDecoration(
        color: KColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
      ),
      child: const Center(
        child: Text(
          'Apply Now',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
