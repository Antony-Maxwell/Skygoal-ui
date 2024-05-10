
import 'package:flutter/material.dart';
import 'package:task/data/dummy_data.dart';

class KCollegeNameList extends StatelessWidget {
  const KCollegeNameList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8)),
          height: 40,
          padding: const EdgeInsets.all(8),
          child: Center(
              child: Text(DummyData.collegeNames[index])),
        );
      },
    );
  }
}
