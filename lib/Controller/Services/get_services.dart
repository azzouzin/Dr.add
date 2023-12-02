import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyGetServices extends GetxService {
  Future init() async {
    GetStorage.init;
    print('Hello getX Services here');

    await Firebase.initializeApp();

    return this;
  }
}
