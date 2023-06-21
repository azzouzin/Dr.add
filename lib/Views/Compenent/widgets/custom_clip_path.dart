// import 'package:flutter/material.dart';

// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double h = size.height;
//     double w = size.width;
//     Path path = Path();
//     path.moveTo(0, size.height * 0.9742381);
//     path.cubicTo(0, h, w * 0.05, h * 0.59, w * 0.13, h * 0.59);
//     path.cubicTo(w * 0.22, h * 0.59, w * 0.25, h * 0.87, w * 0.33, h * 0.87);
//     path.cubicTo(w * 0.42, h * 0.87, w * 0.4, h * 0.59, w * 0.5, h * 0.54);
//     path.cubicTo(w * 0.6, h * 0.49, w * 0.68, h * 0.84, w * 0.8, h * 0.77);
//     path.cubicTo(w * 0.9, h * 0.7, w, h * 0.27, w, h * 0.27);
//     path.lineTo(w, 0);
//     path.lineTo(0, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
