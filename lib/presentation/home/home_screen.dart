import 'package:flutter/material.dart';
import 'package:task/constants/size.dart';
import 'package:task/data/dummy_data.dart';
import 'package:task/widgets/home/bottom_nav_bar.dart';
import 'package:task/widgets/home/header_container.dart';
import 'package:task/widgets/home/primary_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const KHeaderContainer(
                isAnotherPage: false,
                height: 260,
                ),
              KSizes.kHeight,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DummyData.images.length,
                itemBuilder: (context, index) {
                  return KMainContainer(
                    count: DummyData.count[index],
                    institute: DummyData.category[index],
                    description: DummyData.descriptions[index],
                    image: DummyData.images[index],
                    title: DummyData.title[index],
                  );
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNaviBar());
  }
}
