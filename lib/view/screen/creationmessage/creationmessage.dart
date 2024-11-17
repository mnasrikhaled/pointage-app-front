import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/routesnames.dart';

class CreationMessage extends StatelessWidget {
  const CreationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.1,
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.homeEns);
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
            const Text(
              "Vous êtes prêt à envoyer le message!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              child: const Text(
                'Communiquer efficacement avec les étudiants \n \n de manière personnalisée et pratique.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                    decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  label: Text("Email  "),
                  hintStyle: const TextStyle(fontSize: 14),
                  suffixIcon: Icon(Icons.person_outline),
                  hintText: 'Entrer votre email ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ))),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                    decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  label: Text(" Section / Classe  "),
                  suffixIcon: Icon(Icons.people_outline),
                  hintText: 'Entrer le nom du groupe ',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ))),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                    decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 80, horizontal: 30),
                  label: Text(" Créer message "),
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ))),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                textColor: Colors.white,
                onPressed: () {
                  ;
                },
                color: const Color(0xC300E1FF),
                child: const Text("Envoyer",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ));
    ;
  }
}
