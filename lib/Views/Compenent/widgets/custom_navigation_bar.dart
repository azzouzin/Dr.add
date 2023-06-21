import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/Controllers/buttom_nav_controller.dart';
import '../Constants.dart';
import 'navigation_bar_item.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        //the main background of the navigation bar
        Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffF2FAFD),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.22),
                blurRadius: 22,
              )
            ],
          ),
        ),

        //the white background
        Container(
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 28),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
        ),

        //the navigation Bar Items
        Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationBarItem(
                  backgroundColor: bottomNavigationController.colors[0],
                  icon: InkWell(
                    onTap: () {
                      bottomNavigationController.changecolor(0);
                      Get.toNamed('/home');
                    },
                    child: Icon(
                      Icons.home_outlined,
                      color: bottomNavigationController.colors[0] == Colors.blue
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
                NavigationBarItem(
                  backgroundColor: bottomNavigationController.colors[1],
                  icon: InkWell(
                    onTap: () {
                      bottomNavigationController.changecolor(1);
                      Get.toNamed('/search');
                    },
                    child: Icon(
                      Icons.search,
                      color: bottomNavigationController.colors[1] == Colors.blue
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
                NavigationBarItem(
                  backgroundColor: bottomNavigationController.colors[2],
                  icon: InkWell(
                    onTap: () {
                      bottomNavigationController.changecolor(2);
                      Get.toNamed('/commend');
                    },
                    child: Icon(
                      Icons.list_alt_outlined,
                      color: bottomNavigationController.colors[2] == Colors.blue
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
                NavigationBarItem(
                  backgroundColor: bottomNavigationController.colors[3],
                  icon: InkWell(
                    onTap: () {
                      bottomNavigationController.changecolor(3);
                      Get.offAllNamed('/profile');
                    },
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: bottomNavigationController.colors[3] == Colors.blue
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
              ],
            );
          }),
        )
      ],
    );
  }
}
