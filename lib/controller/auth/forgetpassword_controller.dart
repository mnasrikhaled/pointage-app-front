import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/constant/routesnames.dart';

abstract class ForgetPassword extends GetxController {
  checkemail();
  gotoVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPassword {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  gotoVerifyCode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valide");
      Get.offNamed(AppRoute.verifycode);
      Get.delete<ForgetPasswordControllerImp>();
    } else {
      print("Pas valide");
    }
  }

  @override
  checkemail() {}
  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
