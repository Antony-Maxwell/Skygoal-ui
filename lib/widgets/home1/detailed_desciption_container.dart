
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';
import 'package:task/widgets/home1/name_and_rating.dart';

class KDetailedDescriptionContainer extends StatelessWidget {
  const KDetailedDescriptionContainer({
    super.key, required this.collegeName,
  });
  final String collegeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KNameAndRating(collegeName: collegeName, text: 'College'),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 240,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting ",
                    style: TextStyle(
                      fontSize: 13,
    
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: KColors.primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Apply Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(radius: 15, child: Image.network("https://southcoastcollege.edu/wp-content/uploads/2019/07/accreditation-icon-blue.png"),) ,
              title: const Text("more than 1000+ students have been placed", style: TextStyle(
                fontSize: 9,
              ),),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.remove_red_eye_sharp),
                  Text('+468', style: TextStyle(fontSize: 10),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
