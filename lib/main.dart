import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hakim/Controller/Bindings/home_bindings.dart';
import 'package:hakim/Controller/Bindings/login_bindings.dart';
import 'package:hakim/Controller/Bindings/signup_bindings.dart';
import 'package:hakim/Controller/Services/get_services.dart';
import 'package:hakim/Views/Home%20Screens/doctor_details.dart';
import 'package:hakim/Views/Login%20Screens/confirmation.dart';
import 'package:hakim/Views/Login%20Screens/forget_password.dart';
import 'package:hakim/Views/Login%20Screens/login_screen.dart';
import 'package:hakim/Views/Login%20Screens/reset_password.dart';
import 'package:hakim/Views/Login%20Screens/signup_screen.dart';
import 'package:hakim/Views/Home%20Screens/home_screen.dart';
import 'package:hakim/Views/Profile%20Screens/search_view.dart';

import 'Views/Home Screens/clinic_details.dart';
import 'Views/Home Screens/labo_details.dart';
import 'Views/Home Screens/pharmacy_details.dart';
import 'Views/Login Screens/nurse_screen.dart';
import 'Views/Profile Screens/home_view.dart';
import 'Views/Profile Screens/profile_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => MyGetServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Mey',
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: '/',
          page: (() => LoginSecreen()),
          bindings: [LoginBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/labodetails',
          page: (() => LaboDetails()),
          bindings: [LoginBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/clinicDetails',
          page: (() => ClinicDetails()),
          bindings: [LoginBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/commend',
          page: (() => HomeView()),
          bindings: [HomeBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/profile',
          page: (() => ProfileView()),
          bindings: [HomeBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/search',
          page: (() => SearchView()),
          bindings: [HomeBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/pharmacyDetails',
          page: (() => PharmacyDetails()),
          bindings: [LoginBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/doctorDetails',
          page: (() => DoctorDetails()),
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/signup',
          page: (() => SignUpScreen()),
          bindings: [SignUpBindings()],
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/forgetpassword',
          page: (() => ForgetPasswordScreen()),
          bindings: [SignUpBindings()],
          transition: Transition.upToDown,
          curve: Curves.ease,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/confirmation',
          page: (() => ConfirmationScreen()),
          bindings: [SignUpBindings()],
          transition: Transition.rightToLeft,
          curve: Curves.bounceIn,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/resetpassword',
          page: (() => ResetPasswordScreen()),
          bindings: [SignUpBindings()],
          transition: Transition.rightToLeft,
          curve: Curves.bounceIn,
          transitionDuration: Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/home',
          page: (() => HomeScreen()),
          bindings: [HomeBindings()],
          transition: Transition.downToUp,
          curve: Curves.ease,
          transitionDuration: const Duration(milliseconds: 1000),
        ),
        GetPage(
          name: '/nursescreen',
          page: (() => NurseScreen()),
          transitionDuration: const Duration(milliseconds: 1000),
        ),
      ],
      defaultTransition: Transition.fadeIn,
    );
  }
}
