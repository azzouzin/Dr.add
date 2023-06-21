import 'package:flutter/material.dart';

import '../Constants.dart';

class DeliveryIndicator extends StatelessWidget {
  const DeliveryIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              //linear percent indicator

              //(dots,delivery icon)
              SizedBox(
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.black,
                    ),
                    Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: const Color(0xff3A454A),
                            borderRadius: BorderRadius.circular(6)),
                        child: const Icon(
                          Icons.delivery_dining_outlined,
                          color: Colors.white,
                          size: 21,
                        )),
                    const CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(
            width: 8.0,
          ),

          //time line details
          Expanded(
            child: SizedBox(
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Shipped'),
                      Spacer(),
                      Text(
                        '25/04/2023 15:12',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('City 150/209'),
                      Spacer(),
                      Text(
                        '25/04/2023 15:50',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Confirmed'),
                      Spacer(),
                      Text(
                        '',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
