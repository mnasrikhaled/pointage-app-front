import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/constant/color.dart';

import '../../core/constant/routesnames.dart';
import '../widget/home/customtaches.dart';

class HomeEtu extends StatelessWidget {
  const HomeEtu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.1,
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.login);
            },
            iconSize: 25,
            icon: Icon(Icons.exit_to_app_rounded),
            color: Colors.black,
          ),
          title: const Text(" Esapce privé d'etudiant ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromARGB(255, 52, 55, 57))),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   width: 400,
            //   decoration: const BoxDecoration(
            //       color: Color.fromARGB(255, 247, 249, 255),
            //       borderRadius: BorderRadius.only(
            //           topRight: Radius.circular(10),
            //           bottomLeft: Radius.circular(10),
            //           bottomRight: Radius.circular(10))),
            //   padding: EdgeInsets.all(15),
            //   margin: EdgeInsets.all(5),
            //   child: const Column(children: [
            //     Text(
            //       "",
            //       style: TextStyle(
            //           color: Color.fromARGB(255, 20, 20, 20),
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20),
            //     ),
            //     SizedBox(height: 10),
            //     Text(
            //       "",
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 20, 20, 20),
            //         fontWeight: FontWeight.bold,
            //       ),
            //     )
            //   ]),
            // ),
            Container(
                padding: const EdgeInsets.all(15),
                child: const Text(
                  " Tâches",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTaches(
                      bgColor: ColorApp.kRedLight,
                      iconData: Icons.work,
                      iconColor: ColorApp.kRedDark,
                      title: 'Emploi du temps',
                      onTap: () {
                        Get.offAllNamed(AppRoute.emploietudiant);
                      },
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    CustomTaches(
                      bgColor: ColorApp.kYellowLight,
                      iconData: Icons.mail,
                      iconColor: ColorApp.kYellowDark,
                      title: 'Afficher les messages  ',
                      onTap: () {
                        Get.offAllNamed(AppRoute.consultermessages);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTaches(
                      bgColor: ColorApp.kBlueLight,
                      iconData: Icons.meeting_room_outlined,
                      iconColor: ColorApp.kBlueDark,
                      title: 'Pointage',
                      onTap: () {
                        Get.offAllNamed(AppRoute.listeabsencesens);
                      },
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    CustomTaches(
                      bgColor: Color.fromARGB(255, 236, 255, 244),
                      iconData: Icons.assessment_rounded,
                      iconColor: Color.fromARGB(255, 73, 214, 51),
                      title: 'Scanner le Code QR ',
                      onTap: () {
                        Get.offAllNamed(AppRoute.scanetudiant);
                      },
                    ),
                  ],
                ),
              ],
            ))
          ],
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      flexibleSpace: const FlexibleSpaceBar(
          title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Espace privé  ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              Icon(
                Icons.work_history_outlined,
                size: 17,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Mr, Farhat Mohran ',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          )
        ],
      )),
    );
  }
}
