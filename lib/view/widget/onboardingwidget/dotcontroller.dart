import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/controller/onboarding_controller.dart';

import '../../../data/cluster/static/static.dart';

class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControlleImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 600),
                          width: controller.currentPage == index ? 28 : 7,
                          height: 6,
                          decoration: BoxDecoration(
                              color: const Color(0xC300E1FF),
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
