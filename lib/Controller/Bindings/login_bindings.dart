import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/logine_screen_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<LoginController>(LoginController());
  }
}
