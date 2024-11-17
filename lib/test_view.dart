import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pointageapp/controller/test_controller.dart';
import 'package:pointageapp/core/class/statusrequest.dart';
import 'package:pointageapp/core/constant/imageasset.dart';
import 'package:pointageapp/test.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text('Heloo')),
      body: GetBuilder<TestController>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return Center(
              child: Lottie.asset(
                ImageAsset.loading,
                width: 250,
                height: 250,
              ),
            );
          } else if (controller.statusRequest == StatusRequest.offlinefailure) {
            return Center(
                child:
                    Lottie.asset(ImageAsset.offline, width: 250, height: 250));
          } else if (controller.statusRequest == StatusRequest.serverfailure) {
            return Center(
              child: Lottie.asset(ImageAsset.server, width: 250, height: 250),
            );
          } else if (controller.statusRequest == StatusRequest.failure) {
            return Center(
              child: Lottie.asset(ImageAsset.noData, width: 250, height: 250),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Text("$controller.data");
              },
              itemCount: controller.data.length,
            );
          }
        },
      ),
    );
  }
}
