import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'notification_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(context),
        Padding(
          padding: EdgeInsets.only(left: 22.0, right: 22.0, top: 45),
          child: Row(
            children: [
              //user picture
              CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage('assets/images/pat.png'),
              ),

              SizedBox(
                width: 8.0,
              ),

              //user name
              Text(
                'User Name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Spacer(),

              //notivication icon
              NotificationIcon(),
            ],
          ),
        ),
      ],
    );
  }

  SizedBox _buildBackground(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.18,
      child: SvgPicture.asset(
        'assets/images/path.svg',
        fit: BoxFit.fill,
      ),
    );
  }
}
