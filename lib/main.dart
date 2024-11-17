import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/test.dart';
import 'package:pointageapp/test_view.dart';
import 'package:pointageapp/view/screen/codeqr/generationcode.dart';

import 'package:pointageapp/view/screen/codeqr/scannerqrcode.dart';
import 'package:pointageapp/view/screen/creationmessage/consultermessages.dart';
import 'package:pointageapp/view/screen/etuiants/emploietudiant.dart';
import 'package:pointageapp/view/screen/home.dart';
import 'package:pointageapp/view/screen/homeetudiant.dart';
import 'package:pointageapp/view/screen/onboarding.dart';
import 'package:pointageapp/view/screen/tasks/emploienseignant.dart';

import 'bindings/initialbindings.dart';
import 'routes.dart';
import 'view/screen/creationmessage/creationmessage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
      ),
      home: const OnBoarding(),
      routes: routes,
      initialBinding: InitailBindings(),
    );
  }
}
 // This trailing comma makes auto-formatting nicer for build methods.
