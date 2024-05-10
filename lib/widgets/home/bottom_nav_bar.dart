
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/widgets/home/bottom_nav_container.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: KColors.primaryColor,
      child: const Row(
        children: [
          Expanded(
            child: BottomNavContainer(
                icon: Icons.home, heading: 'search', isAvailable: true),
          ),
          Expanded(
            child: BottomNavContainer(
                icon: Icons.bookmark_added,
                heading: 'saved',
                isAvailable: false),
          ),
          Expanded(
            child: BottomNavContainer(
                icon: Icons.saved_search_outlined,
                heading: 'saved',
                isAvailable: false),
          ),
          Expanded(
            child: BottomNavContainer(
                icon: Icons.person_3,
                heading: 'account',
                isAvailable: false),
          )
        ],
      ),
    );
  }
}
