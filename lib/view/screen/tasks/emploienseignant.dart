import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/constant/color.dart';
import 'package:pointageapp/core/constant/routesnames.dart';
import 'package:pointageapp/view/screen/tasks/tasktitle.dart';
import 'package:pointageapp/view/screen/tasks/timeline.dart';

class EmploiEnseignant extends StatelessWidget {
  const EmploiEnseignant({super.key});

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
                TaskTitle(text: "Lundi"),
                TaskTimeLine(
                    title:
                        " - Module :  Java   \n -  Groupe : LIM3\n - Salle : 10  ",
                    bgColor: Color.fromARGB(255, 141, 230, 255),
                    slot: " - Heure de Début : 8h00  Heure de Fin :10h00 "),
                TaskTitle(text: "Mardi"),
                TaskTimeLine(
                    title:
                        " - Module :  big-data \n -  Groupe : IM3   \n - Salle : 11  ",
                    bgColor: Color.fromARGB(255, 141, 255, 253),
                    slot: "-Heure de Début :10h00 - Heure de Fin :12h00 "),
                TaskTitle(text: "Mercredi"),
                TaskTimeLine(
                    title:
                        " - Module : big-data   \n -  Groupe : GL3   \n - Salle : 11  ",
                    bgColor: Color.fromARGB(255, 249, 234, 173),
                    slot: " - Heure de Début : 8h00 - Heure de Fin :10h00 "),
                TaskTitle(text: "Jeudi"),
                TaskTimeLine(
                    title:
                        " - Module :Java \n -  Groupe : GL3  \n - Salle : 12  ",
                    bgColor: Color.fromARGB(255, 232, 255, 156),
                    slot: " - Heure de Début : 14h00 -Heure de Fin : 16h00 "),
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
          Get.offAllNamed(AppRoute.homeEns);
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
