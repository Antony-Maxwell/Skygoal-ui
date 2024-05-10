
import 'package:flutter/material.dart';

class CollegeDetailsContainer extends StatelessWidget {
  const CollegeDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 320,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
          ),
        ),
        const SizedBox(width: 5,),
        Container(
          height: 70,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4.3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
