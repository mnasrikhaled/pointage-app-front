import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControlleImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: 40,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: const Color(0xC300E1FF),
        child: const Text("Continuer",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
