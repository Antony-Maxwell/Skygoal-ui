import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class KCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KCustomAppBar({super.key, this.title, required this.isAvailable});

  final String? title;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return isAvailable
    ?
    AppBar(
      automaticallyImplyLeading: false,
      title: Text('$title College', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      backgroundColor: KColors.primaryColor,
      
    )
    :
    AppBar(
      leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: Icon(Icons.arrow_back),
          ),
        ),
      backgroundColor: KColors.primaryColor,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: Icon(Icons.bookmark_border_outlined),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}
