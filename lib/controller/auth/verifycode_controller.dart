import 'package:get/get.dart';

import '../../core/constant/routesnames.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  gotoResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  @override
  gotoResetPassword() {
    Get.offNamed(AppRoute.resetpassword);
  }

  @override
  checkCode() {}
  @override
  void onInit() {
    super.onInit();
  }
}
