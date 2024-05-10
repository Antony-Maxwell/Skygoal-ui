
import 'package:flutter/material.dart';
import 'package:task/widgets/home/bottom_sheet.dart';
import 'package:task/widgets/home/content_container.dart';
import 'package:task/widgets/home/count_insti.dart';

class KMainContainer extends StatelessWidget {
  const KMainContainer({
    super.key,
    required this.title,
    required this.description,
    required this.image, required this.count, required this.institute,
  });
  final String title;
  final String description;
  final String image;
  final String count;
  final String institute;

  @override
  Widget build(BuildContext context) {
    int _selected = 1;
    return Padding(
        padding: const EdgeInsets.all(30.0),
        child: GestureDetector(
          onTap: () => showModalBottomSheet(
            context: context, 
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: KBottomSheet(selected: _selected),
              );
            },),
          child: Stack(
            children: [
              KContentContainer(
                image: image,
                heading: title,
                description: description,
              ),
              KCountInstitute(
                count: count,
                institute: institute,
              )
            ],
          ),
        ));
  }
}
