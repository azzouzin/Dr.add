import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hakim/Module/doctor.dart';

import '../../Home Screens/home_screen.dart';
import '../Constants.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key, required this.doctor});
  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: screenwidth * 0.95,
        height: screenheight * 0.2,
        child: InkWell(
          onTap: () => Get.toNamed('/doctorDetails'),
          child: Stack(
            children: [
              BestDoctor(
                screenwidth: screenwidth,
                screenheight: screenheight,
                doctor: doctor,
              ),
              Positioned(
                  bottom: screenwidth * 0.07,
                  left: 10,
                  child: SizedBox(
                    height: screenheight * 0.15,
                    width: screenwidth * 0.3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        doctor.photo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                bottom: 0,
                left: 10,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(10)),
                  child: SvgPicture.asset(
                    'assets/images/1.svg',
                    width: screenwidth * 0.3,
                  ),
                ),
              ),
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
    );
  }
}
