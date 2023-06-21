import 'package:get/get.dart';
import 'package:hakim/Controller/Services/auth_services.dart';

class HomeController extends GetxController {
  void logout() async {
    AuthServices authServices = AuthServices();
    await authServices.logout();
    authServices.getcode() == 200
        ? Get.toNamed('/')
        : Get.snackbar('Error', 'There was an error please try later');
  }
}
