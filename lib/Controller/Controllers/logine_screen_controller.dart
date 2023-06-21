import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hakim/Controller/Services/auth_services.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  RxBool isFocused = false.obs;
  RxBool isFocused2 = false.obs;
  TextEditingController editingController1 = TextEditingController();
  TextEditingController editingController2 = TextEditingController();

  final focusNode = FocusNode();
  final focusNode2 = FocusNode();
  RxBool isloading = false.obs;
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  void _handleFocusChange() {
    isFocused.value = focusNode.hasFocus;
  }

  void _handleFocusChange2() {
    isFocused2.value = focusNode2.hasFocus;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    focusNode.addListener(_handleFocusChange);
    focusNode2.addListener(_handleFocusChange2);

    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    focusNode.removeListener(_handleFocusChange);
    focusNode.dispose();
    focusNode2.removeListener(_handleFocusChange);
    focusNode2.dispose();
    editingController1.dispose();
    editingController2.dispose();
    super.onClose();
  }

  void changefocus() {
    isFocused.value = !isFocused.value;
    print(isFocused);
  }

  void changefocus2() {
    isFocused2.value = !isFocused2.value;
    print(isFocused2);
  }

  static const baseurl = 'https://medicalapi.onrender.com/';
  Future<void> delete(String number) async {
    print('delete users  called');
    await http
        .delete(
      Uri.parse(baseurl + 'delete{azzouzmerw%40gmail.com}'),
      headers: requestHeaders,
    )
        .then((value) {
      print(value.statusCode);
      print(value.body);
      var body = json.decode(value.body);
      String id = body['id'];
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }

  Future<void> login(String email, String password) async {
    isloading.value = true;
    print('login patient Controller  called');
    AuthServices authServices = AuthServices();
    await authServices.login(email, password);
    int code = authServices.getcode();
    authServices.setcode();
    if (code == 200) {
      print('Access Mawjod');
      print(' this Access is from controller ${GetStorage().read('access')}');
      Get.offNamed('/home');
    } else {
      Get.snackbar('Please try again', authServices.geterror(),
          backgroundColor: Colors.red.withOpacity(0.5),
          overlayBlur: 10,
          icon: const Icon(Icons.error_outline_outlined),
          margin: const EdgeInsets.only(top: 20));
      print('Access Ghayer Mawjod');
    }
    isloading.value = false;
  }
}
