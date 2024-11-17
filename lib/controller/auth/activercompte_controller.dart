import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:pointageapp/data/cluster/remote/auth/activercomptedata.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routesnames.dart';
import '../../core/functions/handlingdata.dart';

abstract class ActiverCompteController extends GetxController {
  signUp();
  gotoLogin();
}

class ActiverCompteControllerImp extends ActiverCompteController {
  ActiverCompteData compteData = ActiverCompteData(Get.find());
  List data = [];
  StatusRequest? statusRequest;
  late TextEditingController nom;
  late TextEditingController prenom;
  late TextEditingController email;
  late TextEditingController cin;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  signUp() {
    // var formdata = formstate.currentState;
    // if (formdata!.validate()) {
    //   statusRequest = StatusRequest.loading;
    //   update();
    //   var response = await compteData.postData(
    //       prenom.text, nom.text, email.text, cin.text);

    //   statusRequest = handlingData(response);
    //   print(response);
    //   if (StatusRequest.success == statusRequest) {
    //     if (response["status"] == "invalid") {
    Get.offNamed(AppRoute.login);

    // data.addAll(response['data']);
    // } else {
    //   Get.defaultDialog(
    //       title: "C'est incorrect ",
    //       middleText: "vérifiez l'adresse Mail ou le Cin ");
    //   statusRequest == StatusRequest.failure;
    // }
    // }
    update();
    // } else {}
  }

  @override
  gotoLogin() {
    Get.offNamed(AppRoute.login);
    Get.delete<ActiverCompteControllerImp>();
  }

  @override
  void onInit() {
    nom = TextEditingController();
    prenom = TextEditingController();
    email = TextEditingController();
    cin = TextEditingController();
    super.onInit();
  }
}
