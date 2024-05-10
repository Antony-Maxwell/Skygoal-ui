
import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class KSearchWidgetIcon extends StatelessWidget {
  const KSearchWidgetIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.grey, size: 25,),
              hintText: 'Search for colleges, schools.....',
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          height: 60,
          width: 60,
          child: const Center(
            child: Icon(Icons.settings_voice, color: KColors.primaryColor, size: 28,),
          ),
        )
      ],
    );
  }
}
