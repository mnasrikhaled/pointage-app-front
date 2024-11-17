import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pointageapp/core/constant/color.dart';
import 'package:pointageapp/view/widget/messages/custommessge.dart';
import 'package:pointageapp/view/widget/pointage/customabsences.dart';

import '../../../core/constant/routesnames.dart';

class ListAbsEtudiant extends StatelessWidget {
  const ListAbsEtudiant({super.key});

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
          title: const Text(" List d'absences par module  ",
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
            Container(
              width: 330,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(5),
              child: Row(children: [
                Icon(
                  Icons.person_outline_rounded,
                  size: 18,
                  color: Color.fromARGB(255, 118, 113, 113),
                ),
                Text(
                  "Etudiant             ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 20, 20, 20),
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(width: 2),
                Text(
                  "CIN            ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 20, 20, 20),
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                Icon(
                  Icons.meeting_room_outlined,
                  size: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(width: 2),
                Text(
                  "Salle    ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(height: 40),
                Text(
                  "Nombre d'absences",
                  style: TextStyle(
                      color: Color.fromARGB(255, 12, 7, 7),
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ]),
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.work,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
                const Text(
                  "Anglais                    ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomAbsence(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "mnasri khaled  ",
              slot: "  12716006    ",
              date: "    19",
              salle: '    4 ',
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.work,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
                const Text(
                  "JEE                    ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomAbsence(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "mnasri khaled  ",
              slot: "  12716006    ",
              date: "    5",
              salle: '    0 ',
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.work,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
                const Text(
                  "Laravel                   ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomAbsence(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "mnasri khaled  ",
              slot: "  12716006    ",
              date: "    1",
              salle: '    6 ',
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.work,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
                const Text(
                  "IOT                    ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomAbsence(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "mnasri khaled  ",
              slot: "  12716006    ",
              date: "    11",
              salle: '    0 ',
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.work,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
                const Text(
                  "Big data                    ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomAbsence(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "mnasri khaled  ",
              slot: "  12716006    ",
              date: "    9",
              salle: '    1 ',
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.work,
                  size: 25,
                  color: Color.fromARGB(255, 158, 5, 5),
                ),
                const Text(
                  "Python                    ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomAbsence(
              bgColor: Color.fromARGB(255, 255, 255, 255),
              title: "mnasri khaled  ",
              slot: "  12716006    ",
              date: "    7",
              salle: '    3 ',
            ),
          ],
        ));
    ;
  }
}
