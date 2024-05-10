import 'package:flutter/material.dart';
import 'package:task/constants/size.dart';
import 'package:task/widgets/home/bottom_nav_bar.dart';
import 'package:task/widgets/home/header_container.dart';
import 'package:task/widgets/home1/college_list_container.dart';
import 'package:task/widgets/home1/vertical_college_list.dart';

class DetailedListColleges extends StatelessWidget {
  const DetailedListColleges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            KHeaderContainer(
              isAnotherPage: true,
              height: 180,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: KCollegeNameList(),
                  ),
                  KSizes.kHeight,
                  KCollegeList()
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}
