import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pointageapp/core/constant/color.dart';
import 'package:pointageapp/view/widget/messages/custommessge.dart';

import '../../../core/constant/routesnames.dart';

class ConsulterMessages extends StatelessWidget {
  const ConsulterMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.1,
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.homeetudiant);
            },
            iconSize: 25,
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          title: const Text("Création et l'envoi des messages ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 52, 55, 57))),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "   Messages  ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                Icon(
                  Icons.mark_email_unread_outlined,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomMessage(
              bgColor: Colors.white,
              title: "MahranFarhat@gmail.com",
              slot: "Donnez-nous votr. . .",
              date: "08:00 , Am",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "MahranFarhat@gmail.com",
              slot: "Bonne semaine vo. . .",
              date: "10:00 , Pm",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "chahrazed@gmail.com",
              slot: "« Le seul moyen d’être sû. . .",
              date: "  23 mai",
            ),
            CustomMessage(
              bgColor: Colors.white,
              title: "mnasrikhaled@gmail.com",
              slot: "Donnez-nous votre avis...",
              date: "  12 mai",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "wahebsama@gmail.com",
              slot: "Bonjour  Lsi1 Le mot vote...",
              date: "  02 mai",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 226, 244, 255),
              title: "hatemnijawi@gmail.com",
              slot: "Bonjour  GL1 Le 02/05/ . . .",
              date: "  11 avril",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 253, 226),
              title: "sanjisan@gmail.com",
              slot: "Bonjour  GL1 Le 02/08/23 * . . .",
              date: "  25 mars",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "sanjisan@gmail.com",
              slot: "Bonjour  GL1 Le 02/08/23 * . . .",
              date: "  05 mars",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "sanjisan@gmail.com",
              slot: "Bonjour  GL1 Le 02/08/23 * . . .",
              date: "  05 mars",
            ),
            CustomMessage(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "sanjisan@gmail.com",
              slot: "Bonjour  GL1 Le 02/08/23 * . . .",
              date: "  05 mars",
            ),
          ],
        ));
    ;
  }
}
