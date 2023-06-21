import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyGetServices extends GetxService {
  Future init() async {
    GetStorage.init;
    print('Hello getX Services here');

    return this;
  }
}
