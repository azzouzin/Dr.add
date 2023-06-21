import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.btnWidth,
  });
  final String text;
  final Color color;
  final Color textColor;
  final double btnWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnWidth,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
