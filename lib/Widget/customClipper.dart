import 'package:flutter/material.dart';

class MenuClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height-50);
    var controllPaint = Offset(50, size.height);
    var endPoint = Offset(size.width/2, size.height);
    path.quadraticBezierTo(controllPaint.dx, controllPaint.dx, endPoint.dx, endPoint.dx);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}