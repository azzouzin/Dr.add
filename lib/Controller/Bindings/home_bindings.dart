import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/buttom_nav_controller.dart';
import 'package:hakim/Controller/Controllers/home_controller.dart';
import 'package:hakim/Controller/Controllers/logine_screen_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController());
    Get.put<BottomNavigationController>(BottomNavigationController());
  }
}
