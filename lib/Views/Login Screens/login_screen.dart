import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hakim/Controller/Controllers/logine_screen_controller.dart';
import 'package:hakim/Views/Compenent/Constants.dart';
import 'package:hakim/Views/Home%20Screens/home_screen.dart';
import 'package:hakim/Views/Login%20Screens/signup_screen.dart';

class LoginSecreen extends StatelessWidget {
  LoginSecreen({super.key});

  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    double screenwitdh = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //  onPressed: () async {
      //    await loginController.delete('');
      //  },
      //   ),
      body: Stack(
        children: [
          Container(
            width: screenwitdh,
            height: screenheight,
            color: azrak,
            child: Padding(
              padding: EdgeInsets.only(top: screenheight * 0.7),
              child: TextButton(
                child: Text(
                  'Dont have Account ? Sign Up',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    decorationColor: Colors.white, // Set the underline color

                    color: Colors.white, // Change the text color
                    fontSize: screenwitdh * 0.04, // Change the font size
                    fontWeight: FontWeight.bold, // Change the font weight
                  ),
                ),
                onPressed: () {
                  Get.to(SignUpScreen());
                },
              ),
            ),
          ),
          Container(
            width: screenwitdh,
            height: screenheight * 0.8,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    blurStyle: BlurStyle.outer,
                    color: Colors.white,
                    offset: Offset(0, 0),
                  ),
                ],
                color: gry,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: screenheight * 0.07,
                ),
                Image.asset(
                  'assets/images/login1.png',
                  width: screenwitdh * 0.785219399538,
                  height: screenheight * 0.2,
                ),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                Text(
                  'Welcom Back To Dr.Add ! ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: screenwitdh * 0.05,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenheight * 0.05,
                ),
                myTextField(
                    screenheight * 0.048596112311,
                    screenwitdh * 0.785219399538,
                    loginController.editingController1,
                    'email / phone',
                    loginController.focusNode),
                SizedBox(
                  height: screenheight * 0.05,
                ),
                myTextField(
                    screenheight * 0.048596112311,
                    screenwitdh * 0.785219399538,
                    loginController.editingController2,
                    'Password',
                    loginController.focusNode2),
                Padding(
                  padding: EdgeInsets.only(left: screenwitdh * 0.48),
                  child: TextButton(
                    child: Text(
                      'Forget password ?',
                    ),
                    onPressed: () {
                      Get.toNamed('/forgetpassword');
                    },
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.05,
                ),
                myButton(
                    center: Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenwitdh * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    height: screenheight * 0.052972972973,
                    witdh: screenwitdh * 0.785219399538,
                    color: Color(0xFF3DC6EF),
                    onprsd: () {
                      login(loginController.editingController1.text,
                          loginController.editingController2.text);
                    }),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                myButton(
                    height: screenheight * 0.052972972973,
                    witdh: screenwitdh * 0.785219399538,
                    onprsd: () => loginwithgoogle(),
                    color: Colors.white,
                    center: Image.asset('assets/images/google-icon.png'))
              ]),
            ),
          ),
          Obx(() {
            return Center(
              child: loginController.isloading.value == true
                  ? const CircularProgressIndicator()
                  : null,
            );
          }),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/logo.png',
                scale: 12,
              )),
        ],
      ),
    );
  }

  Widget myTextField(double height, double witdh,
      TextEditingController editingController, String hint, focusNode) {
    return Obx(() {
      return Container(
          width: witdh,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: hint == 'password'
                        ? loginController.isFocused2.value
                            ? azrak.withOpacity(0.2)
                            : Colors.grey.withOpacity(0.2)
                        : loginController.isFocused.value
                            ? azrak.withOpacity(0.2)
                            : Colors.grey.withOpacity(0.2),
                    spreadRadius: 10),
              ]),
          child: TextField(
            focusNode: focusNode,
            controller: editingController,
            cursorHeight: height / 2,
            obscureText: hint == 'Password' ? true : false,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintText: hint,
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
    });
  }

  Widget myButton(
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
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 10),
              ]),
          child: Center(child: center)),
    );
  }

  void login(String email, String password) async {
    print('login tapped ');
    print(email);
    print(password);
    Get.to(HomeScreen());
    // await loginController.login(email, password);
  }

  void loginwithgoogle() {
    print('login with google tapped tapped ');
  }
}
