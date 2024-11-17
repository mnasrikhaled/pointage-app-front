import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: " Alert ! ",
      titleStyle: const TextStyle(color: Color.fromARGB(255, 149, 10, 125)),
      middleText: "Voulez-vous vraiment quitter ?",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: const Text("Oui")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Non")),
      ]);
  return Future.value(true);
}
