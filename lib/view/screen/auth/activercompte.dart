import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pointageapp/core/class/statusrequest.dart';
import 'package:pointageapp/core/constant/imageasset.dart';
import 'package:pointageapp/core/functions/alertexitapp.dart';

import '../../../controller/auth/activercompte_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextsignupandlogin.dart';
import '../../widget/auth/customtexttitleauth.dart';

class ActiverCompte extends StatelessWidget {
  const ActiverCompte({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ActiverCompteControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0.1,
        title: const Text(" Activer Votre Compte",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 57, 52, 52))),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<ActiverCompteControllerImp>(
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
                              text: 'C’est rapide et facile !',
                            ),
                            const SizedBox(height: 20),
                            const CustomTextBodyAuth(
                              text:
                                  ' Cet espace est dédié aux étudiants et aux enseignants de L\' ISI KEF ',
                            ),
                            const SizedBox(height: 30),
                            CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 3, 25, "prenom");
                                },
                                hinttext: 'Entrer votre prénom',
                                iconData: Icons.person_outlined,
                                labeltext: 'Prénom',
                                mycontroller: controller.nom,
                                isNumber: false
                                // mycontroller: null,
                                ),
                            CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 3, 25, "nom");
                                },
                                hinttext: 'Entrer votre nom de famille ',
                                iconData: Icons.supervisor_account_outlined,
                                labeltext: 'Nom de famille',
                                mycontroller: controller.prenom,
                                isNumber: false
                                // mycontroller: null,
                                ),
                            CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 5, 100, "email");
                                },
                                hinttext: 'Entrer votre email ',
                                iconData: Icons.email_outlined,
                                labeltext: 'Email',
                                mycontroller: controller.email,
                                isNumber: false
                                // mycontroller: null,
                                ),
                            CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 8, 8, "cin");
                                },
                                hinttext: 'Entrer votre CIN ',
                                iconData: Icons.lock_outlined,
                                labeltext: 'CIN ',
                                mycontroller: controller.cin,
                                isNumber: true
                                // mycontroller: null,
                                ),
                            CustomButtonAuth(
                                text: 'Se connecter',
                                onPressed: () {
                                  controller.signUp();
                                }),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomTextSignUpAndLogin(
                              text: 'Connectez-vous',
                              texttwo: 'En quelques secondes ?',
                              onTap: () {
                                controller.gotoLogin();
                              },
                            )
                          ]),
                        ),
                      ),
          )),
    );
  }
}
