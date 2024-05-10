
import 'package:flutter/material.dart';
import 'package:task/data/dummy_data.dart';
import 'package:task/presentation/home/home_detailed_college.dart';
import 'package:task/widgets/home1/detailed_main_container.dart';

class KCollegeList extends StatelessWidget {
  const KCollegeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: DummyData.detailedImage.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedCollegeScreen(image: DummyData.detailedImage[index], title: DummyData.collegeNames[index]),)),
          child: KDetailedMainContainer(
            image: DummyData.detailedImage[index],
            collegeName: DummyData.collegeNames[index],
          ),
        );
      },
    );
  }
}
