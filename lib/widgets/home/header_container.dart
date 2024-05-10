
import 'package:flutter/material.dart';
import 'package:task/constants/size.dart';
import 'package:task/widgets/container_heading.dart';
import 'package:task/widgets/curved_container.dart';
import 'package:task/widgets/search_hint.dart';
import 'package:task/widgets/search_widget.dart';

class KHeaderContainer extends StatelessWidget {
  const KHeaderContainer({
    super.key, required this.isAnotherPage, required this.height,
  });

  final bool isAnotherPage;
  final double height;

  @override
  Widget build(BuildContext context) {
    return KCurvedHeaderContainer(
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: isAnotherPage
          ? 
          const KSearchWidgetIcon()
          :
          Stack(
            children: [
              const Positioned(
                top: 25,
                right: 0,
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              Positioned(
                  top: 27,
                  right: 5,
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                  )),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KSizes.kHeight,
                  KSizes.kHeight,
                  KContainerHeading(heading: 'Find your own way'),
                  SizedBox(height: 5),
                  KSearchHint(),
                  KSizes.kHeight,
                  KSizes.kHeight,
                  KSearchWidgetIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
