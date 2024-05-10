import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task/constants/size.dart';
import 'package:task/widgets/custom_appbar.dart';
import 'package:task/widgets/home1/about_college_tabview.dart';
import 'package:task/widgets/home1/apply_button.dart';
import 'package:task/widgets/home1/college_details_rating_container.dart';
import 'package:task/widgets/home1/events_tabview.dart';
import 'package:task/widgets/home1/facility_tabview.dart';
import 'package:task/widgets/home1/q_a_tabview.dart';
import 'package:task/widgets/home1/tab_bar.dart';

ValueNotifier<bool> scrollNotifire = ValueNotifier(false);

class DetailedCollegeScreen extends StatelessWidget {
  const DetailedCollegeScreen(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: scrollNotifire,
          builder: (context, value, child) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifire.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifire.value = true;
                }
                return true;
              },
              child: Stack(children: [
                ListView(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$title College',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          KSizes.kHeight1,
                          const CollegeDetailsContainer(),
                          const Divider(),
                          const TabBarSections(),
                          SizedBox(
                            height: 840,
                            child: TabBarView(children: [
                              const AboutCollegeTab(),
                              HostelFacilityTab(name: title, text: 'Hostel'),
                              const KQAtabView(),
                              const KEventContentTabView(),
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                scrollNotifire.value == true
                    ? const SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: KCustomAppBar(
                          isAvailable: false,
                        ),
                      )
                    : SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: KCustomAppBar(title: title, isAvailable: true),
                      )
              ]),
            );
          },
        ),
        bottomNavigationBar: const KApplyButton(),
      ),
    );
  }
}