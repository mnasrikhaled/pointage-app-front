import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verifycode_controller.dart';
import '../../widget/auth/customtextbodyauth.dart';

import '../../widget/auth/customtexttitleauth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0.1,
        title: const Text(" Code de vérification ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 57, 52, 52))),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const CustomTextTitleAuth(
            text: 'Vérifier Code !',
          ),
          const SizedBox(height: 20),
          const CustomTextBodyAuth(
            text:
                ' Connectez-vous avec votre e-mail et votre Mot de passe \n Ou continuez avec votre CIN',
          ),
          const SizedBox(height: 30),
          OtpTextField(
            borderRadius: BorderRadius.circular(20),
            fieldWidth: 50.0,
            numberOfFields: 5,

            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.gotoResetPassword();
            }, // end onSubmit
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}
