import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/functions/handlingdata.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/routesnames.dart';
import '../../data/cluster/remote/auth/logindata.dart';

abstract class LoginController extends GetxController {
  login();
  gotoSignUp();
  gotoForgetPassword();
  gotoLoginEtudiant();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController cin;
  StatusRequest? statusRequest;
  bool isShowpassword = true;
  showPassword() {
    isShowpassword = isShowpassword == true ? false : true;
    update();
  }

  @override
  gotoSignUp() {
    Get.offNamed(AppRoute.activercompte);
    Get.delete<LoginControllerImp>();
  }

  @override
  gotoLoginEtudiant() {
    Get.offNamed(AppRoute.loginetudiant);
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, cin.text);
      //
      print("controller$response");
      statusRequest = handlingData(response);
      print(
          "controller.......................................................$response");

      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "invalid") {
          Get.offNamed(AppRoute.homeEns);
          //no data response (khaled)
          // data.addAll(response['data']);
        } else {
          Get.defaultDialog(
              title: "C'est incorrect ",
              middleText: "vérifiez l'adresse Mail ou le Cin ");
          statusRequest == StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    cin = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    cin.dispose();
    super.dispose();
  }

  @override
  gotoForgetPassword() {
    Get.offNamed(AppRoute.forgetpassword);
  }
}
