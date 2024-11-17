import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pointageapp/core/class/statusrequest.dart';
import 'package:pointageapp/core/functions/alertexitapp.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../controller/auth/loginetudiant_controller.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextsignupandlogin.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/logoauth.dart';

class LoginEtudaint extends StatelessWidget {
  const LoginEtudaint({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginEtudaintControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0.1,
          title: const Text(" Connectez-vous en tant que Etudiant",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 57, 52, 52))),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<LoginEtudaintControllerImp>(
              builder: (controller) =>
                  controller.statusRequest == StatusRequest.loading
                      ? Center(
                          child: Lottie.asset(
                            ImageAsset.loading,
                            width: 250,
                            height: 250,
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: Form(
                            key: controller.formstate,
                            child: ListView(children: [
                              const CustomTextTitleAuth(
                                text: 'Content de te revoir !',
                              ),
                              const SizedBox(height: 20),
                              const CustomTextBodyAuth(
                                text:
                                    ' Connectez-vous avec votre e-mail et votre Mot de passe \n Ou continuez avec votre CIN',
                              ),
                              const SizedBox(height: 30),
                              CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 5, 100, "email");
                                },
                                hinttext: 'Entrer votre email ',
                                iconData: Icons.email_outlined,
                                labeltext: 'E-mail/CIN',
                                mycontroller: controller.email,
                                isNumber: false,
                                // mycontroller: null,
                              ),
                              GetBuilder<LoginControllerImp>(
                                builder: (controller) => CustomTextFormAuth(
                                  obscureText: controller.isShowpassword,
                                  onTapIcon: () {
                                    controller.showPassword();
                                  },
                                  valid: (val) {
                                    return validInput(val!, 8, 8, "cin");
                                  },
                                  hinttext: 'Entrer votre Mot De Passe  ',
                                  iconData: Icons.remove_red_eye_outlined,
                                  labeltext: 'Mot De Passe /CIN',
                                  mycontroller: controller.cin,
                                  isNumber: false,
                                  // mycontroller: null,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: InkWell(
                                  onTap: () {
                                    controller.gotoForgetPassword();
                                  },
                                  child: const Text(
                                    "Mot de passe oublié ?",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 144, 144, 144),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              CustomButtonAuth(
                                  text: 'Se connecter',
                                  onPressed: () {
                                    controller.login();
                                  }),
                              const SizedBox(
                                height: 30,
                              ),
                              CustomTextSignUpAndLogin(
                                text: 'Activer Votre Compte',
                                texttwo: 'En quelques secondes ?  ',
                                onTap: () {
                                  controller.gotoSignUp();
                                },
                              )
                            ]),
                          ),
                        ),
            )));
  }
}
