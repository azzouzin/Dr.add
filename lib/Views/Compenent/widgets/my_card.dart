import 'package:flutter/material.dart';

import '../Constants.dart';
import 'card_details.dart';
import 'custom_button.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [
              0,
              0.4,
              0.8,
            ],
            colors: [
              Colors.white.withOpacity(0.01),
              kPrimaryColor.withOpacity(0.2),
              Colors.white.withOpacity(0.01),
            ],
          ),
        ),
        child: const MyCardContent(),
      ),
    );
  }
}

////////////////////////////////////////
class MyCardContent extends StatelessWidget {
  const MyCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              //name and desc
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr.Boutine Mohamed',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pediatrician',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              Spacer(),

              //image
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  'assets/images/doc.png',
                ),
              ),
            ],
          ),

          SizedBox(height: 8.0),

          //Details (date,time,confirm)
          CardDetails(),

          SizedBox(height: 8.0),

          //actions (cancel and reshedule buttons)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                color: Colors.white,
                text: 'Cancel',
                textColor: Colors.black,
                btnWidth: 135,
              ),
              CustomButton(
                color: kPrimaryColor,
                text: 'Reshedule',
                textColor: Colors.white,
                btnWidth: 135,
              ),
            ],
          )
        ],
      ),
    );
  }
}
