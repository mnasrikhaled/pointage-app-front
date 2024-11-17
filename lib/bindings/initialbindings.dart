import 'package:get/get.dart';
import 'package:pointageapp/core/class/crud.dart';

class InitailBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
