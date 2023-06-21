import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    this.backgroundColor = Colors.white,
    required this.icon,
  });
  final Color backgroundColor;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 21.5,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
        radius: 21,
        backgroundColor: backgroundColor,
        child: icon,
      ),
    );
  }
}
