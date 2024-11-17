import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/controller/onboarding_controller.dart';

import '../../../data/cluster/static/static.dart';

class SliderOnBoarding extends GetView<OnBoardingControlleImp> {
  const SliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 280,
                  height: 280,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 2, 2, 17)),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 1.3, color: Color(0xC30A0A0A)),
                    )),
              ],
            ));
  }
}
