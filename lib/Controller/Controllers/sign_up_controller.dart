import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Controller/Services/auth_services.dart';
import 'package:hakim/Module/profile.dart';

import '../../Views/Compenent/Constants.dart';

class SignUpController extends GetxController {
  late PatientProfile patientProfile;
  String? profileid;
  int code = 0;
  void creatprofile(nameController1, surnameController2, emailController3,
      wilayaController4, dateOfBirth, password) {
    print('PATIENT : ' +
        dateOfBirth +
        wilayaController4 +
        emailController3 +
        surnameController2 +
        nameController1);
    patientProfile = PatientProfile(
      firstName: nameController1,
      lastName: surnameController2,
      email: emailController3,
      wilaya: wilayaController4,
      dateOfBirth: dateOfBirth,
      password: password,
      weight: '70',
      height: '1.50',
      bloodType: 'A+',
      gneder: 'Male',
      phonNumber: '',
    );
  }

  static const baseurl = 'https://medicalapi.onrender.com/';
  Future<int> signUp() async {
    var authService = AuthServices();
    var response = await authService.registerUser(patientProfile);
    response != null
        ? Get.toNamed('/confirmation')
        : Get.snackbar('SignUp failed', authService.geterror());

    if (response != null) {
      // Update app state id registration is seccsefull
      Get.snackbar(
          'Congartilations', 'Your Account was created you can log in now',
          backgroundColor: akhdar);
      Get.toNamed("/signup");
    } else {
      // Update app state id registration is Faild
      Get.snackbar('Error', authService.geterror(),
          backgroundColor: pink, colorText: Colors.white);
    }
    return code;
  }

  int getcode() {
    return code;
  }
}
