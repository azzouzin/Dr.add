import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Compenent/Constants.dart';
import '../Compenent/shapes.dart';
import '../Compenent/widgets/custom_appbar.dart';
import '../Compenent/widgets/custom_filter.dart';
import '../Compenent/widgets/custom_navigation_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = Get.size.height;
    double screenwidth = Get.size.width;
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: Column(
        children: [
          //appBar
          Stack(
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
                padding: EdgeInsets.symmetric(
                    horizontal: screenheight * 0.015,
                    vertical: screenheight * 0.05),
                child: Container(
                  width: screenwidth * 0.9,
                  height: screenheight * 0.0581888653982,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (() {
                          Get.toNamed("/searchResult");
                        }),
                        child: Container(
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
                      ),
                      const Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10)),
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
              ),
            ],
          ),

          //body
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Appointments
                    Text(
                      'Categories',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    MyFilters(type: "Categories"),
                    SizedBox(height: 12),

                    //Delivery
                    Text(
                      'Filter',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    MyFilters(type: "Filter"),

                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Speciality',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    // Delivery Progress indicator
                    MyFilters(
                      type: "Speciality",
                    ),

                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
