import 'package:get/get.dart';
import 'package:hakim/Controller/Controllers/email_verifaction_controller.dart';

import '../Controllers/sign_up_controller.dart';

class SignUpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController(), permanent: true);
    Get.put<EmailController>(EmailController(), permanent: true);
  }
}
