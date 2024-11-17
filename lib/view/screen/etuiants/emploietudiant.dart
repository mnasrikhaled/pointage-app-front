import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/constant/color.dart';
import 'package:pointageapp/core/constant/routesnames.dart';
import 'package:pointageapp/view/screen/etuiants/tasketudiant.dart';
import 'package:pointageapp/view/screen/etuiants/timeetudiant.dart';
import 'package:pointageapp/view/screen/tasks/tasktitle.dart';
import 'package:pointageapp/view/screen/tasks/timeline.dart';

class EmploiEtudiant extends StatelessWidget {
  const EmploiEtudiant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: CustomScrollView(slivers: [
        _buildAppBar(context),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TaskTitleEtuidant(text: "Lundi"),
                TaskEtudiant(
                  title:
                      "-Prof : Salwa farhat\n-Module : Angular \n- Salle : 10",
                  bgColor: Color.fromARGB(255, 141, 230, 255),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : mahran farhat\n-Module : Spring Boot \n- Salle : 10",
                ),
                TaskEtudiant(
                  title: "-Prof : Monia farhat\n-Module : JEE \n- Salle : 10",
                  bgColor: Color.fromARGB(255, 141, 230, 255),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : mahran farhat\n-Module : Flutter \n- Salle : 10",
                ),
                //***************************************************************************************** */
                TaskTitleEtuidant(text: "Mardi"),
                TaskEtudiant(
                  title: "-Prof : Ahmed farhat\n-Module : Java \n- Salle : 10",
                  bgColor: Color(0xFFA0FF8D),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : mahran farhat\n-Module : Tp - python  \n- Salle : 10",
                ),

                TaskEtudiant(
                  title: "-Prof : Linda farhat\n-Module : Java \n- Salle : 10",
                  bgColor: Color(0xFFA0FF8D),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "\n",
                  title1: "\n\n",
                  //*********************************************************************************** */
                ),
                TaskTitleEtuidant(text: "Mercredi"),
                TaskEtudiant(
                  title:
                      "-Prof : Mohssen farhat\n-Module : Cours - Java \n- Salle : 10",
                  bgColor: Color.fromARGB(255, 230, 141, 255),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : mahran farhat\n-Module : Java \n- Salle : 10",
                ),
/********************************************************************************************** */
                TaskTitleEtuidant(text: "Jeudi"),
                TaskEtudiant(
                  title: "-Prof : mahran farhat\n-Module : Java \n- Salle : 10",
                  bgColor: Color(0xFFFFDF8D),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : mahran farhat\n-Module : laravel  \n- Salle : 10",
                ),

                TaskEtudiant(
                  title:
                      "-Prof : mohsen farhat\n-Module : base de données \n- Salle : 10",
                  bgColor: Color(0xFFFFDF8D),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : Ahmed farhat\n-Module : python \n- Salle : 10",
                ),
                /************************************************************************ */
                TaskTitleEtuidant(text: "Vendredi"),
                TaskEtudiant(
                  title:
                      "-Prof : mohamed farhat\n-Module : big data  \n- Salle : 10",
                  bgColor: Color.fromARGB(255, 255, 141, 230),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1: "-Prof : Rabeb farhat\n-Module : Java \n- Salle : 10",
                ),

                TaskEtudiant(
                  title: "-Prof : Sonia farhat\n-Module : SOA \n- Salle : 10",
                  bgColor: Color.fromARGB(255, 255, 141, 202),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "\n",
                  title1: "\n\n",
                ),
                TaskTitleEtuidant(text: "Samedi"),
                TaskEtudiant(
                  title:
                      "-Prof : mahran farhat\n-Module :  Cours - Anglais \n- Salle : 10",
                  bgColor: Color.fromARGB(255, 141, 253, 255),
                  slot: "-Début: 8h00 \n-Fin :10h00",
                  slot1: "-Début: 8h00 \n-Fin :10h00",
                  title1:
                      "-Prof : mahran farhat\n-Module : Tp - SOA  \n- Salle : 10",
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      leading: IconButton(
        onPressed: () {
          Get.offAllNamed(AppRoute.homeetudiant);
        },
        iconSize: 20,
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
      ),
      flexibleSpace: const FlexibleSpaceBar(
          title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Emploi du temps ",
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
            'Classe : IM3 ',
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
