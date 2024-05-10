import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  var borderRadius = 20.0;
  @override
    Path getClip(Size size) {
    var path = Path();
    
    // Bottom-left corner
    path.moveTo(borderRadius, size.height);
    path.arcToPoint(Offset(0, size.height - borderRadius), radius: Radius.circular(borderRadius));

    // Top-left corner
    path.lineTo(0, borderRadius);
    path.arcToPoint(Offset(borderRadius, 0), radius: Radius.circular(borderRadius));

    // Top-right corner
    path.lineTo(size.width - borderRadius, 0);
    path.arcToPoint(Offset(size.width, borderRadius), radius: Radius.circular(borderRadius));

    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
