
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task/constants/size.dart';
import 'package:task/data/dummy_data.dart';

class AboutCollegeTab extends StatelessWidget {
  const AboutCollegeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KSizes.kHeight1,
        const Text(
          'Description',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        KSizes.kHeight1,
        const SizedBox(
          width: double.infinity,
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices."),
        ),
        KSizes.kHeight1,
        const Text(
          'Location',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        KSizes.kHeight1,
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: AssetImage(DummyData.locationImage), fit: BoxFit.cover),
          ),
        ),
        KSizes.kHeight1,
        const Text(
          'Student Review',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        KSizes.kHeight1,
        SizedBox(
          height: 60,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade300),
                  child: index == 4
                      ? const Center(child: Text('+12'))
                      : Image.asset(DummyData.studentImages[index]),
                );
              },
              separatorBuilder: (context, index) {
                if (index == 3) {
                  return const SizedBox(
                    width: 47,
                  );
                } else {
                  return const SizedBox(
                    width: 10,
                  );
                }
              },
              itemCount: 5),
        ),
        const Icon(
          Icons.arrow_drop_up_sharp,
          size: 45,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                  ),
                  KSizes.kHeight1,
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        )
      ],
    ));
  }
}
