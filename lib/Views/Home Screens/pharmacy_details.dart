import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hakim/Views/Compenent/Constants.dart';

class PharmacyDetails extends StatefulWidget {
  const PharmacyDetails({super.key});

  @override
  State<PharmacyDetails> createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails> {
  bool wasfa = true;
  late double screenwidth;
  late double screenheight;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: gry,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: screenwidth,
                  height: screenheight * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bestpharmacy.jpg'),
                          fit: BoxFit.cover),
                      color: akhdar,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                )),
            SizedBox(
              width: screenwidth,
              height: screenheight,
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenwidth * 0.05,
                    right: screenwidth * 0.05,
                    top: screenwidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: ClipOval(
                            child: Container(
                              width: screenwidth * 0.1,
                              height: screenwidth * 0.1,
                              color: Colors.white,
                              child: Center(child: Icon(Icons.arrow_back_ios)),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/save.svg',
                          width: screenwidth * 0.04,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenheight * 0.1,
                    ),
                    myTopContainer(screenwidth, screenheight * 0.8),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Location'),
                    ),
                    Container(
                      width: screenwidth * 0.9,
                      height: screenheight * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/Location.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Reviews'),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: screenwidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  height: screenheight * 0.07,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5,
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2)
                                      ],
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      ClipOval(
                                        child: Container(
                                          color: akhdar.withOpacity(0.5),
                                          width: 40,
                                          height: 40,
                                          child: Image.asset(index == 0
                                              ? 'assets/images/man1.png'
                                              : index == 1
                                                  ? 'assets/images/man2.png'
                                                  : index == 2
                                                      ? 'assets/images/man3.png'
                                                      : index == 3
                                                          ? 'assets/images/man4.png'
                                                          : 'assets/images/man5.png'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('User Name'),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Dr. Smith is committed to providing ',
                                            style: TextStyle(
                                                overflow: TextOverflow.fade,
                                                fontSize: 10,
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w100),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buttoon(screenwidth, screenheight),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: myBotomSheet(),
            )
          ],
        ),
      ),
    );
  }

  Widget myTopContainer(double width, double height) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.1),
      width: width * 0.9,
      height: height * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Stack(
        children: [
          //Backgroud Blure and Colors
          Positioned(
            child: Container(
              width: width * 0.9,
              height: height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(children: [
                Container(
                  height: height * 0.175,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(-0.6, 0.7),
                      radius: 0.6,
                      colors: [
                        akhdar.withOpacity(0.2),
                        Colors.white.withOpacity(1 - 0.5)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: height * 0.175,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            akhdar.withOpacity(0.2),
                            Colors.white.withOpacity(0.1),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green),
                ),
              ]),
            ),
          ),
          Positioned(
            left: width * 0.5,
            top: height * 0.09,
            child: Container(
              width: width * 0.35,
              height: height * 0.035,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1505),
                  color: Colors.white.withOpacity(0.9)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.star, color: Colors.yellow, size: width * 0.05),
                  Icon(Icons.star, color: Colors.yellow, size: width * 0.05),
                  Icon(Icons.star, color: Colors.yellow, size: width * 0.05),
                  Icon(Icons.star, color: Colors.yellow, size: width * 0.05),
                ],
              ),
            ),
          ),
          Positioned(
            left: width * 0.4,
            top: height * 0.04,
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Container(
                    padding: const EdgeInsets.all(2),
                    width: width * 0.05,
                    height: width * 0.05,
                    decoration: const BoxDecoration(
                        color: orange, shape: BoxShape.circle),
                    child: Icon(
                      Icons.phone,
                      size: width * 0.04,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 5,
                ),
                const Text('05 62 41 39 32')
              ],
            ),
          ),
          Positioned(
            left: width * 0.08,
            top: height * 0.04,
            child: Column(
              children: [
                Text(
                  'Pharmacy chifaa',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenwidth * 0.05),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.white,
                        child: SizedBox(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset(
                                'assets/images/instagram.svg')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipOval(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.white,
                        child: SizedBox(
                            width: 20,
                            height: 20,
                            child:
                                SvgPicture.asset('assets/images/facebook.svg')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipOval(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.white,
                        child: SizedBox(
                            width: 20,
                            height: 20,
                            child:
                                SvgPicture.asset('assets/images/website.svg')),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buttoon(witdh, height) {
    return InkWell(
        onTap: (() {
          setState(() {
            isVisible = true;
            print(isVisible);
          });
        }),
        child: Container(
          height: height * 0.06,
          width: witdh * 0.85,
          decoration: BoxDecoration(
              color: akhdar, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child:
                Text('Make Apppintment', style: TextStyle(color: Colors.white)),
          ),
        ));
  }

  Widget book(witdh, height, txt, clr) {
    return InkWell(
        onTap: (() {
          setState(() {
            isVisible = false;
          });
        }),
        child: Container(
          height: height * 0.06,
          width: witdh * 0.85,
          decoration: BoxDecoration(
              color: clr, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(txt,
                style: TextStyle(
                    color: clr == akhdar ? Colors.white : geyketiba,
                    fontWeight: FontWeight.bold,
                    fontSize: screenwidth * 0.05)),
          ),
        ));
  }

  Widget myBotomSheet() {
    return isVisible == false
        ? Container()
        : AnimatedContainer(
            width: screenwidth,
            height: screenheight * 0.75,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 245, 245),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            duration: Duration(seconds: 1),
            curve: Curves.bounceIn,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenwidth * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: screenheight * 0.05,
                  ),

                  //------------------------------------------------------------
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenwidth * 0.04),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: screenwidth * 0.04, color: azrak),
                        ),
                      ]),
                  SizedBox(
                    width: screenwidth * 0.95,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: screenheight * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2)
                            ],
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                'assets/images/adr.png',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text('Merouani Azzouz'),
                                  Text(
                                    'Cite 1000  Setif',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 10,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: screenwidth * 0.01,
                              ),
                              child: Container(
                                width: screenwidth * 0.025,
                                height: screenwidth * 0.025,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Delevery
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenwidth * 0.04),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: screenwidth * 0.04, color: azrak),
                        ),
                      ]),
                  SizedBox(
                    width: screenwidth * 0.95,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: screenheight * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2)
                            ],
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                'assets/images/yalidine.jpg',
                                scale: 10,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text('Yalidine Delivery'),
                                  Text(
                                    'Delivery price : 200 DA',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 10,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Container(
                                width: screenwidth * 0.025,
                                height: screenwidth * 0.025,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Persecption

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Prescriptions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenwidth * 0.04),
                        ),
                        Icon(
                          Icons.camera,
                          color: azrak,
                        )
                      ]),
                  SizedBox(
                    width: screenwidth * 0.95,
                    child: Column(
                      children: [
                        Container(
                          width: screenwidth * 0.8,
                          height: screenheight * 0.26,
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    height: screenheight * 0.07,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2)
                                        ],
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: Image.asset(
                                            'assets/images/pdf.png',
                                            scale: 10,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text('My Prescription'),
                                              Text(
                                                'My Prescription',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: screenwidth * 0.025,
                                                  height: screenwidth * 0.025,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2),
                                                      color: Colors.grey),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Text(
                                                    '2023/05/10 ',
                                                    style: TextStyle(
                                                        overflow:
                                                            TextOverflow.fade,
                                                        fontSize: 10,
                                                        color: Colors.black
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            FontWeight.w100),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15),
                                                  child: Text(
                                                    'show files',
                                                    style: TextStyle(
                                                        overflow:
                                                            TextOverflow.fade,
                                                        fontSize: 10,
                                                        color: azrak
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            FontWeight.w100),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      book(screenwidth * 0.4, screenheight, 'Cancel',
                          Colors.white),
                      book(screenwidth * 0.4, screenheight, 'Apply', akhdar),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget mySelectedHours(double witdh, double height) {
    Color color = Colors.grey;
    List<Color> clrs1 = [
      gry,
      Colors.red,
      gry,
    ];
    List<Color> clrs2 = [
      gry,
      gry,
      Colors.red,
    ];
    List<Color> clrs3 = [
      Colors.red,
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
                      clrs1[index] = akhdar;
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
                          color: clrs1[index] == gry ? akhdar : Colors.white,
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
                      clrs2[index] = akhdar;
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
                          color: clrs2[index] == gry ? akhdar : Colors.white,
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
                      clrs3[index] = akhdar;
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
                          color: clrs3[index] == gry ? akhdar : Colors.white,
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
