import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/functions/validinput.dart';
import '../../../controller/auth/forgetpassword_controller.dart';

import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';

import '../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0.1,
        title: const Text("Mot de passe oublié ",
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
              text: 'Vérifier votre email !',
            ),
            const SizedBox(height: 20),
            const CustomTextBodyAuth(
              text:
                  ' veuillez saisir votre adresse e-mail pour recevoir le code de vérification',
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
                hinttext: 'Entrer votre email ',
                iconData: Icons.email_outlined,
                labeltext: 'E-mail',
                mycontroller: controller.email,
                isNumber: false
                // mycontroller: null,
                ),
            // ignore: prefer_const_constructors
            CustomButtonAuth(
                text: 'Vérifier',
                onPressed: () {
                  controller.gotoVerifyCode();
                }),
            const SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
