import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Views/Compenent/Constants.dart';

class MyFilters extends StatefulWidget {
  const MyFilters({super.key, required this.type});
  final String type;

  @override
  State<MyFilters> createState() => _MyFiltersState();
}

class _MyFiltersState extends State<MyFilters> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.size.width * 0.9,
        height: widget.type == "Speciality"
            ? Get.size.height * 0.3066
            : Get.size.height * 0.13066,
        decoration: BoxDecoration(
            color: bgbleu, borderRadius: BorderRadius.circular(15)),
        child: widget.type == "Categories"
            ? Catgories()
            : widget.type == "Filter"
                ? Filter()
                : Speciality());
  }

  Widget Catgories() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              checkbx('Doctors'),
              SizedBox(width: 50),
              checkbx('Labo'),
            ],
          ),
          Row(
            children: [
              checkbx('Clinic'),
              SizedBox(width: 50),
              checkbx('Pharmacy'),
            ],
          ),
          Row(
            children: [
              checkbx('Infermier'),
              SizedBox(width: 50),
              checkbx('Medicament'),
            ],
          ),
        ],
      ),
    );
  }

  Widget Filter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            checkbx('Top'),
            checkbx('New'),
            checkbx('Old'),
          ],
        ),
        Row(
          children: [
            checkbx('Recomend'),
            checkbx('Nearby'),
          ],
        ),
      ],
    );
  }

  Widget Speciality() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          checkbx('Allergy and immunology'),
          SizedBox(
            height: 10,
          ),
          checkbx('Emergency medicine'),
          SizedBox(
            height: 10,
          ),
          checkbx('Diagnostic radiology'),
          SizedBox(
            height: 10,
          ),
          checkbx('Neurology'),
          SizedBox(
            height: 10,
          ),
          checkbx('Ophthalmology'),
          SizedBox(
            height: 10,
          ),
          checkbx('Pathology'),
          SizedBox(
            height: 10,
          ),
          checkbx('Pediatrics'),
          SizedBox(
            height: 10,
          ),
          checkbx('Preventive medicine'),
          SizedBox(
            height: 10,
          ),
          checkbx('Pathology'),
          SizedBox(
            height: 10,
          ),
          checkbx('Urology'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget checkbx(String txt) {
    bool val = false;
    return Container(
      width: widget.type == "Speciality"
          ? 200
          : widget.type == "Filter"
              ? 105
              : 110,
      height: 20,
      child: Row(
        children: <Widget>[
          StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Checkbox(
              activeColor: Colors.blue,
              value: val,
              onChanged: (value) {
                setState(() {
                  val = !val;
                });
              },
            );
          }),
          Text(
            txt,
            style: TextStyle(fontSize: 12.0),
          ), //Text
        ],
      ),
    );
  }
}
