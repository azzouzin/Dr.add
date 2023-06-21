import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hakim/Views/Compenent/Constants.dart';
import 'package:hakim/Views/Compenent/widgets/custom_navigation_bar.dart';

import '../Compenent/shapes.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  List<String> options = [
    'Setting',
    'About Use',
    'Terms And Privacy',
    'Log Out',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgbleu,
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              toppart(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: Get.size.width * 0.25,
                      height: Get.size.width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/jirthim.png'),
                            Text(
                              'Chronic Disease',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: Get.size.width * 0.25,
                      height: Get.size.width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/dor.png'),
                            Text(
                              'Analysise',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: Get.size.width * 0.25,
                      height: Get.size.width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/blood.png'),
                          Text(
                            ' Blood Donation ',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: Get.size.width * 0.25,
                      height: Get.size.width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/pres.png'),
                          Text(
                            'Prescriptions',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.size.width * 0.25,
                      height: Get.size.width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/medicament.png'),
                          Text(
                            'Medicaments',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.size.width * 0.25,
                      height: Get.size.width * 0.22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/Medicla.png',
                            scale: 18,
                          ),
                          Text(
                            'Consultations',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: Get.size.width * 0.9,
                  height: Get.size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Blood Donation',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.blue),
                          ),
                          Container(
                            width: Get.size.width * 0.1,
                            height: Get.size.height * 0.016,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 3)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: ClipOval(
                                    child: Container(
                                  width: Get.size.height * 0.012,
                                  color: geyketiba,
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'By Activating This Features ,Those Looking For Blood Donations Can Find You ',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: geyketiba,
                          ),
                        ),
                      ),
                      Text(
                        'Latest Date Donation',
                        style: TextStyle(
                            fontWeight: FontWeight.w100, color: Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '01/05/2023',
                          style: TextStyle(
                              fontWeight: FontWeight.w100, color: geyketiba),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: Get.size.width * 0.9,
                  height: Get.size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer)
                      ]),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 15),
                    padding: EdgeInsets.all(5),
                    width: Get.size.width * 0.9,
                    height: Get.size.height * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Get.size.width * 0.03),
                                      child: Text(
                                        options[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: Get.size.width * 0.04,
                                            color: geyketiba),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: Get.size.width * 0.03),
                                  child: Icon(
                                    Icons.arrow_circle_right,
                                    color: geyketiba,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.grey,
                              height: 10,
                              thickness: 2,
                              endIndent: 10,
                              indent: 10,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget toppart() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SvgPicture.asset('assets/images/path.svg'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SvgPicture.asset('assets/images/path copy.svg'),
        ),
        Align(
          child: profilepic(),
          alignment: Alignment.topLeft,
        ),
        Padding(
          padding: EdgeInsets.only(top: Get.size.height * 0.04, left: 50),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Mohammed boutine',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Get.size.height * 0.08, left: Get.size.width * 0.32),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: azrak,
                ),
                Text(
                  'Setif , Ain arnet',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Get.size.height * 0.12, left: Get.size.width * 0.32),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Icon(
                  Icons.bloodtype,
                  color: azrak,
                ),
                Text(
                  'AB+',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Get.size.height * 0.04, right: Get.size.width * 0.05),
          child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark_rounded,
                color: Colors.blue,
                size: 30,
              )),
        ),
      ],
    );
  }

  Widget profilepic() {
    return Container(
      width: Get.size.width * 0.35,
      height: Get.size.width * 0.35,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: Get.size.width * 0.35,
              child: const Image(
                image: AssetImage('assets/images/out.png'),
                fit: BoxFit.fill,
              )),
          Container(
            width: Get.size.width * 0.33,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('assets/images/inside.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ClipOval(
              child: Container(
                  width: Get.size.width * 0.18,
                  child: Image(
                    image: AssetImage('assets/images/pat.png'),
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ClipOval(
                child: Container(
                  padding: EdgeInsets.all(1),
                  color: Colors.white,
                  width: Get.size.width * 0.10,
                  child: Image(
                    image: AssetImage('assets/images/QR.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
