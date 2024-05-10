
import 'package:flutter/material.dart';

class KCountInstitute extends StatelessWidget {
  const KCountInstitute({
    super.key, required this.count, required this.institute,
  });

  final String count;
  final String institute;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 50,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count, style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 2,),
              Text(
                institute,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
