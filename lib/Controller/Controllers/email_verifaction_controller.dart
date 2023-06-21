import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hakim/Controller/Services/auth_services.dart';

class EmailController extends GetxController {
  RxBool isloading = false.obs;
  String? profileid;
  Future<void> otpConfirm(String otpNum, String id) async {
    AuthServices authServices = AuthServices();
    await authServices.otpConfirm(otpNum, id);

    print('id =============== $id');
    print('otpNum =============== $otpNum');
  }

  Future<void> otpConfirmPassword(String otpNum, String id) async {
    AuthServices authServices = AuthServices();
    await authServices.otpConfirmPassword(otpNum, id);
    profileid = id;
    GetStorage().write('id', id);
    print('id =============== $id');
    print('otpNum =============== $otpNum');
  }

  Future<void> checkUser(String email) async {
    isloading.value = true;
    AuthServices authServices = AuthServices();
    await authServices.checkUser(email);
    if (authServices.getcode() == 200) {
      profileid = authServices.getid();

      Get.toNamed('/confirmation');
    } else {
      Get.snackbar('Try Again', authServices.geterror());
    }
    print('email =============== $email');
    print('id =============== $profileid');
    isloading.value = false;
  }

  Future<void> resetPassword(String password) async {
    AuthServices authServices = AuthServices();
    String ide = GetStorage().read('id');
    await authServices.resetPassword(password, ide);
    int code = authServices.getcode();
    authServices.setcode();
    print(' code ========== $code');
    code == 200
        ? Get.toNamed('/')
        : Get.snackbar('Password Error',
            'The passwords you entered not valid enter another one.',
            duration: Duration(seconds: 3),
            backgroundColor: Colors.red,
            colorText: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10));

    print('id =============== $password');
  }
}
