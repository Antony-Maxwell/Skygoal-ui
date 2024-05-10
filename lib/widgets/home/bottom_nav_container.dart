
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class BottomNavContainer extends StatelessWidget {
  const BottomNavContainer({
    super.key, required this.icon, required this.heading, required this.isAvailable,
  });

  final IconData icon;
  final String heading;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 80,
        color: KColors.primaryColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white,),
              Text(heading, style: const TextStyle(color: Colors.white),),
              isAvailable
              ?
              const Divider(
                thickness: 2,
                indent: 15,
                endIndent: 15,
              )
              :
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
