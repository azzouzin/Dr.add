import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hakim/Module/doctor.dart';
import 'package:hakim/Views/Compenent/widgets/search_card.dart';

import '../../Compenent/Constants.dart';
import '../../Compenent/shapes.dart';
import '../../Compenent/widgets/custom_navigation_bar.dart';

class SearchResultsPage extends StatelessWidget {
  SearchResultsPage({super.key});
  List<Doctor> listDoctrors = [
    Doctor(
        phone: "05 62 41 39 35",
        type: "Dentist",
        descreption:
            "Azzouz Merouani Descreption ....................................................................................................................................................",
        photo:
            "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
        name: "Merouani Azzouz"),
    Doctor(
        phone: "05 62 41 39 35",
        type: "Dentist",
        descreption:
            "Amin Boutine Descreption ....................................................................................................................................................",
        photo:
            "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
        name: "Merouani Azzouz"),
    Doctor(
        phone: "05 62 41 39 35",
        type: "Dentist",
        descreption:
            "Mohammed Descreption ....................................................................................................................................................",
        photo:
            "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
        name: "Merouani Azzouz"),
    Doctor(
        phone: "05 62 41 39 35",
        type: "Dentist",
        descreption:
            "Mohammed Descreption ....................................................................................................................................................",
        photo:
            "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
        name: "Merouani Azzouz"),
    Doctor(
        phone: "05 62 41 39 35",
        type: "Dentist",
        descreption:
            "Mohammed Descreption ....................................................................................................................................................",
        photo:
            "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
        name: "Farid Benjedi "),
    Doctor(
        phone: "05 62 41 39 35",
        type: "Dentist",
        descreption:
            "Mohammed Descreption ....................................................................................................................................................",
        photo:
            "https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*",
        name: "Rahim  Onaji "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.18,
              child: SvgPicture.asset(
                'assets/images/path.svg',
                
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listDoctrors.length + 1,
                  itemBuilder: ((context, index) {
                    return index == 0
                        ? Container(
                            width: screenwidth * 0.9,
                            height: screenheight * 0.0581888653982,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: screenwidth * 0.747663551402 * 0.15,
                                  height: screenheight * 0.0581888653982,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.search, color: azrak),
                                  ),
                                ),
                                const Expanded(
                                    child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Search",
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
                          )
                        : SearchCard(
                            doctor: listDoctrors[index - 1],
                          );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
