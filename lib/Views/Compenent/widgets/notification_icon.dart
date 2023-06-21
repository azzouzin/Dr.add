import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Icon(
          Icons.notifications,
          color: Colors.white,
          size: 26,
        ),
        CircleAvatar(
          radius: 8.0,
          backgroundColor: Colors.red,
          child: Text(
            '2',
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
