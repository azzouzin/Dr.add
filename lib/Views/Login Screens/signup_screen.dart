import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/sign_up_controller.dart';

import 'package:hakim/Views/Compenent/Constants.dart';
import 'package:hakim/Views/Login%20Screens/login_screen.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreentate createState() => _SignUpScreentate();
}

enum Gender { male, female }

class _SignUpScreentate extends State<SignUpScreen> {
  final _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  bool _isLoading = false;
  String wilaya = 'Setif';
  bool isDropDownOpen = false;
  TextEditingController nameController1 = TextEditingController();
  TextEditingController surnameController2 = TextEditingController();
  TextEditingController emailController3 = TextEditingController();
  TextEditingController wilayaController4 = TextEditingController();
  TextEditingController passwordController5 = TextEditingController();
  SignUpController controller = Get.put(SignUpController());
  Gender selectedValue = Gender.male;
  DateTime selectedDate = DateTime.now();
  void _handleNextPage() async {
    print(_currentPage);
    setState(() {
      _isLoading = true;
    });
    // Do sign-up process here

    controller.creatprofile(
        nameController1.text,
        surnameController2.text,
        emailController3.text,
        wilayaController4.text,
        DateFormat.yMd().format(selectedDate).toString(),
        passwordController5.text);
    await controller.signUp();
    setState(() {
      _isLoading = false;
    });

    controller.getcode() == 201
        ? _controller.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
        : null;
    setState(() {
      _currentPage++;
    });

    print(_currentPage);
  }

  @override
  Widget build(BuildContext context) {
    double screenwitdh = Get.size.width;
    double screenheight = Get.size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // Page 1
                Container(
                    width: screenwitdh,
                    height: screenheight,
                    color: gry,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: screenheight * 0.15,
                                bottom: screenheight * 0.1),
                            child: Text(
                              'Creat Account',
                              style: TextStyle(
                                  letterSpacing: 2,
                                  color: Colors.black,
                                  fontSize: screenwitdh * 0.06,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          MyTextField(
                            screenheight * 0.048596112311,
                            screenwitdh * 0.785219399538,
                            nameController1,
                            'First name',
                          ),
                          SizedBox(
                            height: screenheight * 0.04,
                          ),
                          MyTextField(
                            screenheight * 0.048596112311,
                            screenwitdh * 0.785219399538,
                            surnameController2,
                            'Last name',
                          ),
                          SizedBox(
                            height: screenheight * 0.04,
                          ),
                          MyTextField(
                            screenheight * 0.048596112311,
                            screenwitdh * 0.785219399538,
                            passwordController5,
                            'Password',
                          ),
                          SizedBox(
                            height: screenheight * 0.04,
                          ),
                          MyTextField(
                            screenheight * 0.048596112311,
                            screenwitdh * 0.785219399538,
                            wilayaController4,
                            'Wilaya',
                          ),
                          SizedBox(
                            height: screenheight * 0.04,
                          ),
                          MyTextField(
                            screenheight * 0.048596112311,
                            screenwitdh * 0.785219399538,
                            emailController3,
                            'Email ',
                          ),
                          SizedBox(
                            height: screenheight * 0.04,
                          ),
                          InkWell(
                            onTap: (() {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              ).then((value) {
                                setState(() {
                                  selectedDate = value!;
                                  print(selectedDate.toString());
                                });
                              });
                            }),
                            child: Container(
                              width: screenwitdh * 0.785219399538,
                              height: screenheight * 0.048596112311,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 10),
                                  ]),
                              child: Center(
                                  child: Text(
                                selectedDate == null
                                    ? 'Date of  Birth'
                                    : DateFormat.yMd()
                                        .format(selectedDate)
                                        .toString(),
                                style: TextStyle(color: Colors.grey),
                              )),
                            ),
                          ),
                          SizedBox(
                            height: screenheight * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenwitdh * 0.07,
                                bottom: screenheight * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenwitdh * 0.04,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  width: screenwitdh * 0.3,
                                  child: ListTileTheme(
                                    horizontalTitleGap: 0.0,
                                    child: RadioListTile(
                                      contentPadding: EdgeInsets.only(
                                          left: screenwitdh * 0.05),
                                      tileColor: Colors.black,
                                      title: Text(
                                        'Female',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: screenwitdh * 0.04,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      value: Gender.female,
                                      groupValue: selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenwitdh * 0.3,
                                  child: ListTileTheme(
                                    horizontalTitleGap: 0.0,
                                    child: RadioListTile(
                                      title: Text(
                                        'Male',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: screenwitdh * 0.04,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      value: Gender.male,
                                      groupValue: selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenwitdh,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () => Get.toNamed('/'),
                                  child: Container(
                                      width: screenwitdh * 0.275,
                                      height: screenheight * 0.05,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                spreadRadius: 1,
                                                blurRadius: 20),
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: _currentPage == 2
                                            ? Text('Skip')
                                            : Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  fontSize: screenwitdh * 0.05,
                                                  fontWeight: FontWeight.bold,
                                                  color: azrak,
                                                ),
                                              ),
                                      )),
                                ),
                                InkWell(
                                  onTap: _handleNextPage,
                                  child: Container(
                                      width: screenwitdh * 0.275,
                                      height: screenheight * 0.05,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                spreadRadius: 1,
                                                blurRadius: 20),
                                          ],
                                          color: azrak,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: _currentPage == 2
                                            ? Text('Finish')
                                            : Text(
                                                'Next',
                                                style: TextStyle(
                                                  fontSize: screenwitdh * 0.05,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
            Positioned(
              top: screenheight * 0.07,
              left: screenwitdh * 0.06,
              right: screenwitdh * 0.06,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    minHeight: screenwitdh * 0.03,
                    value: (_currentPage + 1) / 2,
                    backgroundColor: Colors.white,
                    valueColor: const AlwaysStoppedAnimation<Color>(azrak),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MyTextField(double height, double witdh,
      TextEditingController editingController, String hint) {
    return Container(
        width: witdh,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5),
            ]),
        child: hint == 'Wilaya'
            ? Stack(
                children: [
                  TextField(
                    controller: editingController,
                    cursorHeight: height / 2,
                    enabled: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: witdh * 0.05, vertical: height * 0.2),
                      suffixIcon: hint == 'Email '
                          ? Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: witdh * 0.01,
                                  vertical: height * 0.2),
                              child: Image.asset(
                                'assets/images/alg.png',
                              ),
                            )
                          : null,
                      prefixIcon: hint == 'Email '
                          ? Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: witdh * 0.05,
                                  vertical: height * 0.3),
                              child: Text(
                                ' +213',
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          : null,
                      hintText: hint,
                      hintStyle: TextStyle(color: Colors.grey),
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
                  ),
                  Positioned(
                    right: 0,
                    child: DropdownButton<String>(
                      iconSize: witdh * 0.12,
                      icon: Icon(Icons.arrow_downward),
                      value: wilaya,
                      onChanged: (String? newValue) {
                        setState(() {
                          wilaya = newValue!;
                          wilayaController4.text = newValue;
                        });
                      },
                      items: <String>['Setif', 'Alger', 'Oran', 'Annaba']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              )
            : TextField(
                obscureText: hint == 'Password' ? true : false,
                controller: editingController,
                cursorHeight: height / 2,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: witdh * 0.05, vertical: height * 0.2),
                  suffixIcon: hint == 'Email '
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: witdh * 0.01, vertical: height * 0.2),
                          child: Image.asset(
                            'assets/images/alg.png',
                          ),
                        )
                      : null,
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey),
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
