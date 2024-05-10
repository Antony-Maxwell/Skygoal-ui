
import 'package:flutter/material.dart';
import 'package:task/data/dummy_data.dart';

class KFacilityList extends StatelessWidget {
  const KFacilityList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 30,
              width: 30,
              child: Image.asset(DummyData.facilities[index]),
            ),
            title: Text(DummyData.facilitiesText[index]),
          );
        },
        itemCount: DummyData.facilities.length,
        ),
    );
  }
}
