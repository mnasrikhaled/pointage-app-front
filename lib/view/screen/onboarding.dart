import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/controller/onboarding_controller.dart';
import '../widget/onboardingwidget/custombutton.dart';
import '../widget/onboardingwidget/dotcontroller.dart';
import '../widget/onboardingwidget/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControlleImp());
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 3,
            child: SliderOnBoarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  DotControllerOnBoarding(),
                  Spacer(flex: 3),
                  CustomButtonOnBoarding(),
                ],
              ))
        ]),
      ),
    );
  }
}
