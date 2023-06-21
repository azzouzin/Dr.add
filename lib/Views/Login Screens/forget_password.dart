import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/email_verifaction_controller.dart';

import 'package:hakim/Views/Compenent/Constants.dart';

class ForgetPasswordScreen extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  EmailController emailController = Get.find();
  @override
  Widget build(BuildContext context) {
    double screenwitdh = Get.size.width;
    double screenheight = Get.size.height;

    return Scaffold(
      backgroundColor: gry,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            left: screenwitdh * 0.05,
            height: screenwitdh * 0.2,
            child: InkWell(
              onTap: (() {
                Get.back();
              }),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenheight * 0.07),
            child: SizedBox(
              width: screenwitdh,
              height: screenheight,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/G1.png',
                      width: screenwitdh * 0.9,
                      height: screenheight * 0.25,
                    ),
                    SizedBox(
                      height: screenheight * 0.05,
                    ),
                    Text(
                      'Forget passowrd !',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenwitdh * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenheight * 0.05,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenwitdh * 0.175),
                      child: Text(
                        'Please entre your email or phone number to reset your password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: geyketiba,
                            fontSize: screenwitdh * 0.04,
                            shadows: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5)
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: screenheight * 0.05,
                    ),
                    My_Text_Field(screenheight * 0.06, screenwitdh * 0.8,
                        editingController),
                    SizedBox(
                      height: screenheight * 0.05,
                    ),
                    My_Button(
                      height: screenheight * 0.06,
                      witdh: screenwitdh * 0.8,
                      onprsd: () async {
                        print('Confirme tapp');
                        await emailController.checkUser(editingController.text);
                      },
                      color: azrak,
                      center: Text(
                        'Entre',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenwitdh * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(() {
            return Center(
              child: emailController.isloading.value == true
                  ? const CircularProgressIndicator()
                  : null,
            );
          })
        ],
      )),
    );
  }

  Widget My_Button(
      {required double height,
      required double witdh,
      required Function onprsd,
      required Color color,
      required Widget center}) {
    return InkWell(
      onTap: () {
        onprsd();
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: witdh,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 10),
              ]),
          child: Center(child: center)),
    );
  }

  Widget My_Text_Field(
      double height, double witdh, TextEditingController editingController) {
    return Container(
        width: witdh,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 10),
            ]),
        child: TextField(
          controller: editingController,
          cursorHeight: height / 2,
          decoration: InputDecoration(
            hintText: 'Email / Phone',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: azrak,
                width: 0.5,
              ),
            ),
          ),
        ));
  }
}
