
import 'package:flutter/material.dart';
import 'package:task/widgets/home1/detailed_desciption_container.dart';
import 'package:task/widgets/home1/detailed_image_container.dart';

class KDetailedMainContainer extends StatelessWidget {
  const KDetailedMainContainer({
    super.key, required this.image, required this.collegeName,
  });
  final String image;
  final String collegeName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          KImageContainer(image: image),
          KDetailedDescriptionContainer(collegeName: collegeName),
        ],
      ),
    );
  }
}
