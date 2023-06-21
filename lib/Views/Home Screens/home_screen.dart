import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/home_controller.dart';
import '../Compenent/Constants.dart';

import '../Compenent/shapes.dart';
import '../Compenent/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  late double screenwidthh;
  HomeScreen({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    screenwidthh = screenwidth;
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CustomNavigationBar(),
          body: Stack(
            children: [
              Image.asset(
                'assets/images/hm.png',
                fit: BoxFit.fitWidth,
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenheight * 0.015, vertical: 20),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/pat.png',
                                width: screenwidth * 0.1,
                                height: screenwidth * 0.1,
                              ),
                            ),
                          ),
                          const Text(
                            'Merouani Azzouz',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenheight * 0.015, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: screenwidth * 0.747663551402,
                              height: screenheight * 0.0581888653982,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: screenwidth * 0.747663551402 * 0.15,
                                    height: screenheight * 0.0581888653982,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10)),
                                      color: azrak,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.only(left: 10)),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: CustomPaint(
                                      size: Size(
                                          screenwidth * 0.4 * 0.15,
                                          (screenwidth * 0.4 * 0.15 * 1)
                                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                      painter: QrCode(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: screenwidth * 0.747663551402 * 0.15,
                              height: screenheight * 0.0581888653982,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: azrak,
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: screenheight * 0.013,
                                      right: screenheight * 0.018,
                                      child: CustomPaint(
                                        size: Size(
                                            screenwidth * 0.06,
                                            (screenwidth *
                                                    0.06 *
                                                    0.6666666666666666)
                                                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                        painter: ThreeDot(),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenheight * 0.015),
                        child: Text(
                          'Categories',
                          style: TextStyle(fontSize: screenwidth * 0.06),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenheight * 0.015),
                        child: SizedBox(
                          width: screenwidth,
                          height: screenheight * 0.2,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ...List.generate(
                                    4,
                                    (index) => category(
                                        index, screenwidth, screenheight))
                              ]),
                        ),
                      ),

                      // ---------------------------------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenheight * 0.015),
                        child: Text(
                          'Doctors',
                          style: TextStyle(fontSize: screenwidth * 0.06),
                        ),
                      ),
                      SizedBox(
                          width: screenwidth,
                          height: screenheight * 0.2,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              itemCount: 4,
                              itemBuilder: ((context, index) {
                                return Row(
                                  children: [
                                    myitemy(index, screenwidth, screenwidth,
                                        'doctor'),
                                    const SizedBox(
                                      width: 20,
                                    )
                                  ],
                                );
                              }))),
                      // ---------------------------------------------
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenheight * 0.015),
                        child: Text(
                          'pharmacy',
                          style: TextStyle(fontSize: screenwidth * 0.06),
                        ),
                      ),
                      SizedBox(
                          width: screenwidth,
                          height: screenheight * 0.2,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              itemCount: 4,
                              itemBuilder: ((context, index) {
                                return Row(
                                  children: [
                                    myitemy(index, screenwidth, screenwidth,
                                        'pharma'),
                                    const SizedBox(
                                      width: 20,
                                    )
                                  ],
                                );
                              }))),

                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Highest rated',
                          style: TextStyle(fontSize: screenwidth * 0.06),
                        ),
                      ),
                      // ---------------------------------------------------
                      Center(
                        child: SizedBox(
                          width: screenwidth * 0.9,
                          height: screenheight * 0.25,
                          child: InkWell(
                            onTap: () => Get.toNamed('/doctorDetails'),
                            child: Stack(
                              children: [
                                BestDoctor(
                                    screenwidth: screenwidth,
                                    screenheight: screenheight),
                                Positioned(
                                    bottom: screenwidth * 0.07,
                                    left: -screenwidth * 0.03,
                                    child: Image.asset(
                                      'assets/images/doc.png',
                                      width: screenwidth * 0.4,
                                    )),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: SvgPicture.asset(
                                      'assets/images/1.svg',
                                      width: screenwidth * 0.3,
                                    )),
                                Positioned(
                                    left: 10,
                                    bottom: screenwidth * 0.074,
                                    child: SvgPicture.asset(
                                      'assets/images/2.svg',
                                      width: screenwidth * 0.3,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // --------------------------------------------------------------

                      //Best Pharmacy
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50, top: 15),
                          child: Container(
                            width: screenwidth * 0.85,
                            height: screenheight * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 5,
                                      spreadRadius: 1)
                                ],
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/bestpharmacy.jpg'),
                                    fit: BoxFit.cover)),
                            child: InkWell(
                              onTap: () => Get.toNamed('/pharmacyDetails'),
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: SvgPicture.asset(
                                        'assets/images/greenshape.svg',
                                        fit: BoxFit.fitWidth,
                                      )),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        'assets/images/greenshape.svg',
                                        fit: BoxFit.fitWidth,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: screenwidth * 0.35,
                                      right: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Pharmacy chifaa',
                                              style: TextStyle(
                                                  fontSize: screenwidth * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            SvgPicture.asset(
                                              'assets/images/save.svg',
                                              width: screenwidth * 0.03,
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  'Saturday - Thursday',
                                                  Icons.timelapse_rounded,
                                                  false),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  '7:00 - 18:00',
                                                  Icons.timelapse_rounded,
                                                  false),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  'Setif Ain Arnet',
                                                  Icons.location_on_rounded,
                                                  false),
                                              docitem('4.8', Icons.star, false),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Best Clinic
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50, top: 15),
                          child: Container(
                            width: screenwidth * 0.85,
                            height: screenheight * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 5,
                                      spreadRadius: 1)
                                ],
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/Clinicc.png'),
                                    fit: BoxFit.fill)),
                            child: InkWell(
                              onTap: () => Get.toNamed('/labodetails'),
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: SvgPicture.asset(
                                        'assets/images/purpleshape.svg',
                                        fit: BoxFit.fitWidth,
                                      )),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        'assets/images/purpleshape.svg',
                                        fit: BoxFit.fitWidth,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: screenwidth * 0.35,
                                      right: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Labo Bayazid',
                                              style: TextStyle(
                                                  fontSize: screenwidth * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            SvgPicture.asset(
                                              'assets/images/save.svg',
                                              width: screenwidth * 0.03,
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  'Saturday - Thursday',
                                                  Icons.timelapse_rounded,
                                                  false),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  '7:00 - 18:00',
                                                  Icons.timelapse_rounded,
                                                  false),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  'Setif Ain Arnet',
                                                  Icons.location_on_rounded,
                                                  false),
                                              docitem('4.8', Icons.star, false),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Best Labo
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50, top: 15),
                          child: Container(
                            width: screenwidth * 0.85,
                            height: screenheight * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 5,
                                      spreadRadius: 1)
                                ],
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/Laboo.png'),
                                    fit: BoxFit.cover)),
                            child: InkWell(
                              onTap: () => Get.toNamed('/clinicDetails'),
                              child: Stack(
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: SvgPicture.asset(
                                        'assets/images/bleushape.svg',
                                        fit: BoxFit.fitWidth,
                                      )),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        'assets/images/bleushape.svg',
                                        fit: BoxFit.fitWidth,
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: screenwidth * 0.35,
                                      right: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Clinic El Mehabi',
                                              style: TextStyle(
                                                  fontSize: screenwidth * 0.04,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            SvgPicture.asset(
                                              'assets/images/save.svg',
                                              width: screenwidth * 0.03,
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  'Saturday - Thursday',
                                                  Icons.timelapse_rounded,
                                                  false),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  '7:00 - 18:00',
                                                  Icons.timelapse_rounded,
                                                  false),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              docitem(
                                                  'Setif Ain Arnet',
                                                  Icons.location_on_rounded,
                                                  false),
                                              docitem('4.8', Icons.star, false),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      /* ElevatedButton(
                        onPressed: (() {
                          homeController.logout();
                        }),
                        child: Text('LOGOUT'),
                      ),*/
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget myitemy(
      int index, double screenwidth, double screenheight, String typ) {
    return InkWell(
      onTap: () {
        Get.toNamed('/doctorDetails');
      },
      child: SizedBox(
        width: screenwidth * 0.3,
        height: screenheight * 0.6,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: -screenheight * 0.08,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: screenheight * 0.01),
                    width: screenwidth * 0.3,
                    height: screenheight * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            colors: [azrak, Colors.white],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Container(
                        width: screenwidth * 0.3,
                        height: screenheight * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.5)),
                      ),
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('John Phelip'),
                  )
                ],
              ),
            ),
            Positioned(
                top: 0,
                child: Image.asset(
                  typ == 'pharma'
                      ? 'assets/images/Pharmacy.png'
                      : 'assets/images/doc.png',
                  width:
                      typ == 'pharma' ? screenwidth * 0.3 : screenwidth * 0.35,
                  height:
                      typ == 'pharma' ? screenheight * 0.4 : screenheight * 0.4,
                )),
            Container(
              width: screenwidth * 0.28,
              height: screenheight * 0.07,
              margin: const EdgeInsets.only(bottom: 2, left: 2, right: 2),
              padding: const EdgeInsets.only(left: 2, right: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: azrak),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '4.8',
                    style: TextStyle(color: gry, fontSize: screenwidth * 0.033),
                  ),
                  Icon(
                    Icons.star,
                    size: screenwidth * 0.05,
                    color: orange,
                  ),
                  SizedBox(
                    width: screenwidth * 0.06,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: orange,
                    ),
                    child: SvgPicture.asset(
                      typ == 'pharma'
                          ? 'assets/images/pharma.svg'
                          : 'assets/images/tooth.svg',
                      semanticsLabel: 'My SVG Image',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget category(int index, double width, double height) {
    return InkWell(
      child: SizedBox(
        height: height * 0.15,
        width: width * 0.20,
        child: Column(
          children: [
            Container(
              width: width * 0.175,
              height: height * 0.09,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: index == 3
                      ? Image.asset('assets/images/Labo.png')
                      : SvgPicture.asset(
                          index == 0
                              ? 'assets/images/Doctors.svg'
                              : index == 1
                                  ? 'assets/images/pharma.svg'
                                  : 'assets/images/Clinic.svg',
                          width: width * 0.13,
                        )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(index == 0
                  ? 'Doctors'
                  : index == 1
                      ? 'Pharmacy'
                      : index == 2
                          ? 'Clinic'
                          : 'Labo'),
            )
          ],
        ),
      ),
    );
  }

  Widget docitem(String text, IconData? iconData, bool isdark) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            padding: const EdgeInsets.all(3),
            color: orange,
            child: iconData == null
                ? SvgPicture.asset(
                    'assets/images/tooth.svg',
                    width: screenwidthh * 0.04,
                  )
                : Icon(
                    iconData,
                    size: screenwidthh * 0.04,
                    color: Colors.white,
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            text,
            style: TextStyle(
              color: isdark == false ? Colors.white : Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

class BestDoctor extends StatelessWidget {
  const BestDoctor({
    super.key,
    required this.screenwidth,
    required this.screenheight,
  });

  final double screenwidth;
  final double screenheight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Container(
        width: screenwidth * 0.85,
        height: screenheight * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
        child: Padding(
          padding: EdgeInsets.only(
            left: screenwidth * 0.35,
            right: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dr.Azzouz Merounai',
                    style: TextStyle(
                        fontSize: screenwidth * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  SvgPicture.asset(
                    'assets/images/save.svg',
                    width: screenwidth * 0.03,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    docitem('Dentist', null),
                    docitem('4.8', Icons.star),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    docitem('Setif Ain Arnet', Icons.location_on_rounded),
                    docitem('80', Icons.euro)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget docitem(String text, IconData? iconData) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            padding: const EdgeInsets.all(3),
            color: orange,
            child: iconData == null
                ? SvgPicture.asset(
                    'assets/images/tooth.svg',
                    width: screenwidth * 0.04,
                  )
                : Icon(
                    iconData,
                    size: screenwidth * 0.04,
                    color: Colors.white,
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(text),
        )
      ],
    );
  }
}
