import 'package:flutter/material.dart';

import '../Constants.dart';
import 'custom_button.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [
              0,
              0.7,
              0.9,
            ],
            colors: [
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.1),
              kPrimaryColor.withOpacity(0.2),
            ],
          ),
        ),
        child: const DeliveryCardContent(),
      ),
    );
  }
}

class DeliveryCardContent extends StatelessWidget {
  const DeliveryCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          //details and image
          Row(
            children: [
              //delivery details(title,id,order time)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pharmacy: Islem Islem',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Order ID: 19N35789',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Order Time: 25/04/2023 14:42',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              Spacer(),

              //delivery image
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  'assets/images/pat.png',
                ),
              ),
            ],
          ),

          SizedBox(height: 8.0),

          // confirm btn
          CustomButton(
            text: 'Confirm Delivery',
            color: kPrimaryColor,
            textColor: Colors.white,
            btnWidth: double.infinity,
          ),
        ],
      ),
    );
  }
}
