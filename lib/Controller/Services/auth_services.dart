import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Module/profile.dart';
import 'package:get_storage/get_storage.dart';

class AuthServices {
  static const baseurl = 'https://medicalapi.onrender.com/';
  String profileid = '';
  final box = GetStorage();
  int code = 0;
  String error = 'There is an error';
  Map<String, String> jsonRequestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  Future<void> signUp(PatientProfile patientProfile) async {
    print('sign up patient profile called');

    await http
        .post(Uri.parse('${baseurl}signup'),
            headers: jsonRequestHeaders, body: patientProfile.toJson())
        .then((response) {
      print('Sign UP Status Code ${response.statusCode}');
      print('Sign UP Status Code ${response.body}');

      var body = json.decode(response.body);
      print('$body');
      if (response.statusCode == 201) {
        profileid = body['id'];
        code = response.statusCode;
      } else {
        print('ERROR IN SIGN UP CODE ${response.statusCode}');
        error = body['detail'];
      }
    }).onError((error, stackTrace) {
      print('ERROR IN SIGN UP');
      print(error.toString());
    });
  }

  Future<void> otpConfirm(String otpNum, String id) async {
    print('Otp Confirm profile called');

    await http
        .post(
      Uri.parse('${baseurl}singup/verify/$id'),
      headers: jsonRequestHeaders,
      body: json.encode(<String, String>{
        'otp': otpNum,
      }),
    )
        .then((res) {
      print(res.statusCode);
      print(res.body);
      res.statusCode == 200
          ? Get.toNamed('/nursescreen')
          : Get.snackbar('Wrong Number', 'Please try again');
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }

  Future<void> otpConfirmPassword(String otpNum, String id) async {
    print('Otp Confirm Password  called');

    await http
        .post(
      Uri.parse('${baseurl}forgetpassword/verify/$id'),
      headers: jsonRequestHeaders,
      body: json.encode(<String, String>{
        'otp': otpNum,
      }),
    )
        .then((res) {
      print(res.statusCode);
      print(res.body);

      res.statusCode == 200
          ? Get.previousRoute == '/forgetpassword'
              ? Get.toNamed('resetpassword')
              : Get.toNamed('/')
          : Get.snackbar('Wrong Number', 'Please try again');
      var body = json.decode(res.body);
      print('$body');
      if (res.statusCode == 200) {
        profileid = body['id'];
        code = res.statusCode;
      } else {
        print('ERROR CONFIRMSTION CODE ${res.statusCode}');
        error = body['detail'];
      }
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }

  Future<void> resetPassword(String password, id) async {
    print('Reset Password  called');
    print("This IS PROFILE ID $id");
    await http
        .patch(
      Uri.parse('${baseurl}forgetpassword/$id'),
      headers: jsonRequestHeaders,
      body: json.encode(<String, String>{
        'password': password,
      }),
    )
        .then((response) {
      print(response.statusCode);

      code = response.statusCode;
      print(response.body);
      var body = json.decode(response.body);
      if (response.statusCode == 200) {
        profileid = body['id'];
      } else {
        print('ERROR IN RESET PASSWORD CODE ${response.statusCode}');
        error = body['detail'];
      }
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }

  Future<void> login(String email, String password) async {
    print('login patient Service  called');

    await http
        .post(Uri.parse('${baseurl}login'),
            headers: jsonRequestHeaders,
            body: json.encode({
              'email': email,
              'password': password,
            }))
        .then((response) {
      print('Sign UP Status Code ${response.statusCode}');
      print('Sign UP Status Code ${response.body}');

      var body = json.decode(response.body);
      print('$body');
      code = response.statusCode;
      if (response.statusCode == 200) {
        saveData(body['access_token'], body['refresh_token']);
      } else {
        error = body['detail'];
        print('ERROR IN LOG IN CODE ${response.statusCode}');
      }
    }).onError((error, stackTrace) => null);
  }

  Future<void> checkUser(String email) async {
    print('checkUser  Service  called');

    await http
        .post(Uri.parse('${baseurl}checkuser/'),
            headers: jsonRequestHeaders,
            body: json.encode({
              'email': email,
            }))
        .then((response) {
      print('CHECK USER Status Code ${response.statusCode}');
      print('CHECK USER BODY  ${response.body}');

      var body = json.decode(response.body);
      print('$body');
      code = response.statusCode;
      if (response.statusCode == 200) {
        profileid = body['id'];
        code = response.statusCode;
      } else {
        error = body['detail'];
        print('ERROR IN CHECK USER CODE ${response.statusCode}');
      }
    });
  }

  Future<void> logout() async {
    print('Logout patient Service  called');

    await http.get(
      Uri.parse('${baseurl}logout'),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${GetStorage().read('access')}'
      },
    ).then((response) {
      print('Log out Status Code ${response.statusCode}');
      print('Log out Status Body ${response.body}');

      var body = json.decode(response.body);
      print('$body');
      code = response.statusCode;
      if (response.statusCode == 200) {
        clearData();
      } else {
        print('ERROR IN LOG OUT CODE ${response.statusCode}');
      }
    }).onError((error, stackTrace) {
      print('There is error $error $stackTrace');
    });
  }

  int getcode() {
    return code;
  }

  void setcode() {
    code = 0;
  }

  String geterror() {
    return error;
  }

  void saveData(String access, String refresh) {
    box.write('access', access);
    box.write('refresh', refresh);
  }

  String loadAcces() {
    return box.read('access') ?? '';
  }

  String loadRefresh() {
    return box.read('refresh') ?? '';
  }

  void clearData() {
    box.remove('refresh');
    box.remove('access');
  }

  String getid() {
    return profileid;
  }
}
