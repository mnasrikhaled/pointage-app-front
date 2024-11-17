import 'package:flutter/material.dart';
import 'package:pointageapp/core/constant/routesnames.dart';
import 'package:pointageapp/view/screen/absences/listeabsenceseetu.dart';
import 'package:pointageapp/view/screen/auth/activercompte.dart';
import 'package:pointageapp/view/screen/auth/forgetpassword.dart';
import 'package:pointageapp/view/screen/auth/loginetudiant.dart';
import 'package:pointageapp/view/screen/auth/resetpassword.dart';
import 'package:pointageapp/view/screen/auth/verifycode.dart';
import 'package:pointageapp/view/screen/codeqr/generationcode.dart';
import 'package:pointageapp/view/screen/creationmessage/consultermessages.dart';
import 'package:pointageapp/view/screen/etuiants/emploietudiant.dart';
import 'package:pointageapp/view/screen/home.dart';
import 'package:pointageapp/view/screen/tasks/emploienseignant.dart';
import 'view/screen/absences/listeabsencesens.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/codeqr/scannerqrcode.dart';
import 'view/screen/creationmessage/creationmessage.dart';
import 'view/screen/homeetudiant.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.loginetudiant: (context) => const LoginEtudaint(),
  AppRoute.activercompte: (context) => const ActiverCompte(),
  AppRoute.forgetpassword: (context) => const ForgetPassword(),
  AppRoute.verifycode: (context) => const VerifyCode(),
  AppRoute.resetpassword: (context) => const ResetPawssword(),
  AppRoute.homeEns: (context) => const HomePage(),
  AppRoute.homeetudiant: (context) => const HomeEtu(),
  AppRoute.emploiEnseignant: (context) => const EmploiEnseignant(),
  AppRoute.generationQrCode: (context) => const GenerationQrCode(),
  AppRoute.creationmessage: (context) => const CreationMessage(),
  AppRoute.listeabsencesens: (context) => const ListAbsEns(),

  /************************ETUDIANT  */
  AppRoute.scanetudiant: (context) => const ScannerQrCode(),
  AppRoute.consultermessages: (context) => const ConsulterMessages(),
  AppRoute.listeabsenceseet: (context) => const ListAbsEtudiant(),
  AppRoute.emploietudiant: (context) => const EmploiEtudiant(),
};
