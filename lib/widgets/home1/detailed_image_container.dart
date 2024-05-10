import 'package:flutter/material.dart';

class KImageContainer extends StatelessWidget {
  const KImageContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: const Stack(
        children: [
          Positioned(
            top: 10,
            left: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18,
              child: Icon(Icons.share_outlined),
            ),
          ),
          Positioned(
            top: 10,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18,
              child: Icon(Icons.bookmark_border_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
