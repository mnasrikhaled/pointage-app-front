import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/resetpassword_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';

import '../../widget/auth/customtexttitleauth.dart';

class ResetPawssword extends StatelessWidget {
  const ResetPawssword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0.1,
        title: const Text("Réinitialiser le mot de passe ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 57, 52, 52))),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const CustomTextTitleAuth(
              text: 'Nouveau mot de passe !',
            ),
            const SizedBox(height: 20),
            const CustomTextBodyAuth(
              text:
                  ' Connectez-vous avec votre e-mail et votre Mot de passe \n Ou continuez avec votre CIN',
            ),
            const SizedBox(height: 30),
            GetBuilder<ResetPasswordControllerImp>(
              builder: (controller) => CustomTextFormAuth(
                obscureText: controller.isShowpassword,
                onTapIcon: () {
                  controller.showPassword();
                },
                valid: (val) {
                  return validInput(val!, 5, 100, "password");
                },
                hinttext: 'Entrer votre mot de passe  ',
                iconData: Icons.remove_red_eye_outlined,
                labeltext: ' Nouveau mot de passe', mycontroller: null,
                isNumber: false,
                // mycontroller: null,
              ),
            ),
            GetBuilder<ResetPasswordControllerImp>(
                builder: (controller) => CustomTextFormAuth(
                      obscureText: controller.isShowpassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      valid: (val) {
                        return validInput(val!, 5, 100, "password");
                      },
                      hinttext: 'Entrer votre mot de passe',
                      iconData: Icons.remove_red_eye_outlined,
                      labeltext: 'Confirmer le nouveau mot de passe ',
                      mycontroller: null, isNumber: false,
                      // mycontroller: null,
                    )),
            CustomButtonAuth(
              text: 'Vérifier',
              onPressed: () {
                controller.resetpawssword();
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
