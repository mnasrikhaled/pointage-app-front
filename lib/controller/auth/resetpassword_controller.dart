import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/constant/routesnames.dart';

abstract class ResetPasswordController extends GetxController {
  resetpawssword();
  gotoLogin();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isShowpassword = true;
  showPassword() {
    isShowpassword = isShowpassword == true ? false : true;
    update();
  }

  @override
  gotoLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  resetpawssword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valide");
      Get.offNamed(AppRoute.login);
      Get.delete<ResetPasswordControllerImp>();
    } else {
      print("Pas valide");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
