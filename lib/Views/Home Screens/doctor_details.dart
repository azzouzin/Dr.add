import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hakim/Views/Compenent/Constants.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
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
                  height: screenheight * 0.25,
                  decoration: const BoxDecoration(
                      color: azrak,
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
                                          color: azrak.withOpacity(0.5),
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
      width: width * 0.9,
      height: height * 0.4,
      child: Stack(
        children: [
          Positioned(
            top: height * 0.05,
            child: Container(
              width: width * 0.9,
              height: height * 0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      height: height * 0.175,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment(-0.6, 0.7),
                          radius: 0.6,
                          colors: [
                            azrak.withOpacity(0.2),
                            Colors.white.withOpacity(1 - 0.5)
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                      ),
                    ),
                    Container(
                      height: height * 0.175,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                azrak.withOpacity(0.2),
                                Colors.white.withOpacity(0.1),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: Colors.green),
                    ),
                  ]),
                  Stack(children: [
                    Container(
                      height: height * 0.175,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment(-0.7, -0.9),
                          radius: 0.6,
                          colors: [
                            azrak.withOpacity(0.2),
                            Colors.white.withOpacity(1 - 0.5)
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                    ),
                    Container(
                      height: height * 0.175,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                azrak.withOpacity(0.2),
                                Colors.white.withOpacity(0.1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.green),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Text(
                            'Dr. Merouani is a highly skilled physician with years of experience in the medical field. With a friendly and approachable demeanor, Dr. Smith takes great care to listen to his patients and understand their concerns. He is known for his thorough and meticulous approach to diagnosis and treatment, always taking the time to explain medical concepts in clear and simple terms. Patients appreciate his compassionate bedside manner and his dedication to helping them achieve their health goals. Whether working with a routine check-up or a complex medical issue, Dr. Smith is committed to providing the highest quality care to each and every patient he sees.',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.w100,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Positioned(
            left: width * 0.1,
            top: height * 0.02,
            child: SizedBox(
              width: width * 0.33,
              height: width * 0.35,
              child: Image.asset(
                'assets/images/doc.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: width * 0.08,
            top: height * 0.215,
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
              top: height * 0.1,
              child: Container(
                width: width * 0.5,
                height: height * 0.12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Azzouz Merouani',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          width: width * 0.05,
                          height: width * 0.05,
                          decoration: BoxDecoration(
                              color: orange, shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            'assets/images/tooth.svg',
                            semanticsLabel: 'My SVG Image',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text('Dentist')
                      ],
                    ),
                    Row(
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
                  ],
                ),
              ))
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
              color: azrak, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child:
                Text('Make Apppintment', style: TextStyle(color: Colors.white)),
          ),
        ));
  }

  Widget book(witdh, height) {
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
              color: azrak, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text('Book Now', style: TextStyle(color: Colors.white)),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenwidth * 0.11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.warning_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          'Pick Day And Time To Make an Appointment',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: screenwidth * 0.03,
                              wordSpacing: 2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenwidth,
                    height: screenheight * 0.25,
                    child: CalendarCarousel(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  mySelectedHours(screenwidth, screenheight),
                  SizedBox(
                    height: 20,
                  ),
                  book(screenwidth, screenheight),
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
