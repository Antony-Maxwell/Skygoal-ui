
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class KBedContainer extends StatelessWidget {
  const KBedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 35,
        width: double.infinity,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            List<int> numbers =
                List.generate(4, (index) => 4 - index);
            return Container(
              height: 20,
              width: 60,
              decoration: index == 0
                  ? BoxDecoration(
                      border:
                          Border.all(color: KColors.primaryColor),
                      color: KColors.primaryColor,
                      borderRadius: BorderRadius.circular(8))
                  : BoxDecoration(
                      border:
                          Border.all(color: KColors.primaryColor),
                      borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bed_outlined,
                        color:
                            index == 0 ? Colors.white : Colors.black),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${numbers[index]}',
                      style: index == 0
                          ? const TextStyle(color: Colors.white)
                          : const TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 4,
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
        ),
      ),
    );
  }
}
