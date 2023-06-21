import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Views/Compenent/Constants.dart';

class NurseScreen extends StatelessWidget {
  const NurseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgbleu,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              scale: 5,
            )),
            Center(
              child: Text(
                "  Are you a nurse can go out to homes ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "If yes select working hours below",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            mySelectedHours(Get.size.width, Get.size.height),
            SizedBox(
              width: Get.size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed('/'),
                    child: Container(
                        width: Get.size.width * 0.275,
                        height: Get.size.height * 0.05,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 20),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: Get.size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: azrak,
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/');
                    },
                    child: Container(
                        width: Get.size.width * 0.275,
                        height: Get.size.height * 0.05,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 20),
                            ],
                            color: azrak,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Finish',
                            style: TextStyle(
                              fontSize: Get.size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mySelectedHours(double witdh, double height) {
    Color color = Colors.grey;
    List<Color> clrs1 = [
      gry,
      gry,
      gry,
    ];
    List<Color> clrs2 = [
      gry,
      gry,
      gry,
    ];
    List<Color> clrs3 = [
      gry,
      gry,
      gry,
    ];
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return SizedBox(
        width: witdh * 0.95,
        height: height * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      print('Clicked $index');
                      clrs1[index] = azrak;
                    });
                  },
                  child: Container(
                    width: witdh * 0.2,
                    height: height * 0.06,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: clrs1[index],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        index == 0
                            ? '8-9'
                            : index == 1
                                ? '9-10'
                                : '10-11',
                        style: TextStyle(
                          color: clrs1[index] == gry ? azrak : Colors.white,
                          fontSize: witdh * 0.04,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      print('Clicked $index');
                      clrs2[index] = azrak;
                    });
                  },
                  child: Container(
                    width: witdh * 0.2,
                    height: height * 0.06,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: clrs2[index],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        index == 0
                            ? '11-12'
                            : index == 1
                                ? '13-14'
                                : '14-15',
                        style: TextStyle(
                          color: clrs2[index] == gry ? azrak : Colors.white,
                          fontSize: witdh * 0.04,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      print('Clicked $index');
                      clrs3[index] = azrak;
                    });
                  },
                  child: Container(
                    width: witdh * 0.2,
                    height: height * 0.06,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: clrs3[index],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        index == 0
                            ? '15-16'
                            : index == 1
                                ? '16-17'
                                : '17-18',
                        style: TextStyle(
                          color: clrs3[index] == gry ? azrak : Colors.white,
                          fontSize: witdh * 0.04,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      );
    });
  }
}
