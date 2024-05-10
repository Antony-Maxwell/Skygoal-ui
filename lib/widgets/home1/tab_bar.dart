import 'package:flutter/material.dart';

class TabBarSections extends StatelessWidget {
  const TabBarSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(tabs: [
      Tab(
        child: Text(
          'About college',
          style: TextStyle(fontSize: 10),
        ),
      ),
      Tab(
        child: Text(
          'Hostel facility',
          style: TextStyle(fontSize: 10),
        ),
      ),
      Tab(
          child: Text(
        'Q & A',
        style: TextStyle(fontSize: 10),
      )),
      Tab(
          child: Text(
        'Events',
        style: TextStyle(fontSize: 10),
      )),
    ]);
  }
}
