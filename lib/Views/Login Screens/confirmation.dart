import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/email_verifaction_controller.dart';
import 'package:hakim/Controller/Controllers/sign_up_controller.dart';

import 'package:hakim/Views/Compenent/Constants.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  EmailController emailController = Get.find();
  SignUpController signUp = Get.find();
  bool isloading = false;
  void _submit() async {
    // Get the values of each text field and submit them.
    final values = _controllers.map((controller) => controller.text).toList();
    setState(() {
      isloading = true;
    });
    Get.previousRoute == '/forgetpassword'
        ? await emailController.otpConfirmPassword(
            values.join(), emailController.profileid!)
        : await emailController.otpConfirm(values.join(), signUp.profileid!);
    setState(() {
      isloading = false;
    });
  }

  @override
  void dispose() {
    // Dispose the focus nodes and text controllers when the widget is removed from the widget tree.
    _focusNodes.forEach((node) => node.dispose());
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwitdh = Get.size.width;
    double screenheight = Get.size.height;

    return Scaffold(
      backgroundColor: gry,
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: screenwitdh * 0.8,
                    top: screenheight * 0.03,
                  ),
                  child: InkWell(
                    onTap: (() {
                      Get.back();
                    }),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/G2.png',
                  width: screenwitdh * 0.9,
                  height: screenheight * 0.25,
                ),
                SizedBox(
                  height: screenheight * 0.05,
                ),
                Text(
                  'Confirmation',
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
                    'Please entre code was sent to email azzouz  merouani',
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(6, (index) {
                        return My_Text_Field(
                            screenheight * 0.04, screenwitdh * 0.15, index);
                      })
                    ]),
                SizedBox(
                  height: screenheight * 0.05,
                ),
                My_Button(
                  height: screenheight * 0.06,
                  witdh: screenwitdh * 0.8,
                  onprsd: () {
                    print('Confirme tapp');

                    _submit();
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
                SizedBox(
                  height: screenheight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenwitdh * 0.1),
                  child: Row(
                    children: [
                      Text(
                        'Did you note recieve code ? ',
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
                      Text(
                        'Resend Code ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: azrak,
                            fontSize: screenwitdh * 0.04,
                            shadows: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5)
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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

  Widget My_Text_Field(double height, double witdh, int index) {
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
          style: TextStyle(
              color: azrak, fontWeight: FontWeight.bold, fontSize: witdh * 0.4),
          maxLength: 1,
          onChanged: (value) {
            // Move focus to the next field when a character is entered.
            if (value.isNotEmpty) {
              if (index < 5) {
                _focusNodes[index + 1].requestFocus();
              } else {
                // If the last field is reached, get the values and submit.
                _submit();
              }
            }
          },
          controller: _controllers[index],
          focusNode: _focusNodes[index],
          cursorHeight: height / 2,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(bottom: witdh * 0.2, left: witdh * 0.4),
            counterText: '',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.white,
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
