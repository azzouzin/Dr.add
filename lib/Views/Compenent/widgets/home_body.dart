import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'delivery_card.dart';
import 'delivery_indicator.dart';
import 'my_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //appBar
        CustomAppBar(),

        //body
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Appointments
                  Text(
                    'My Appointments',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  MyCard(),
                  MyCard(),

                  SizedBox(height: 12),

                  //Delivery
                  Text(
                    'Delivery',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  DeliveryCard(),

                  SizedBox(
                    height: 16,
                  ),

                  // Delivery Progress indicator
                  DeliveryIndicator(),

                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
