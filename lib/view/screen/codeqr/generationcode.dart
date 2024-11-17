import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class GenerationQrCode extends StatefulWidget {
  const GenerationQrCode({super.key});

  @override
  State<GenerationQrCode> createState() => _GenerationQrCodeState();
}

class _GenerationQrCodeState extends State<GenerationQrCode> {
  var data1 = 'Add barCode';
  var data2 = 'Add barCode';
  var data3 = 'Add barCode';
  var data4 = 'Add barCode';
  var data5 = 'Add barCode';
  var data6 = 'Add barCode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0.1,
          title: const Text("Créer des QR codes facilement  ",
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
              "Content de te revoir !",
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
                ' Connectez-vous avec votre e-mail et votre Mot de passe \n Ou continuez avec votre CIN',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            const SizedBox(height: 20),
            BarcodeWidget(
              data:
                  ' Email : ${data1} \n Module  : ${data2}, \n numéro de salle / amphi : ${data3} \n Groupe : ${data4} \n Heure de Début: ${data5} \n Heure de Fin  : ${data6}',
              barcode: Barcode.qrCode(),
              color: Color.fromARGB(255, 0, 0, 0),
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                    onChanged: (val) {
                      setState(() {
                        data1 = val;
                      });
                    },
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
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                alignment: Alignment.center,
                child: TextField(
                    onChanged: (val) {
                      setState(() {
                        data2 = val;
                      });
                    },
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      label: Text("Module"),
                      suffixIcon: Icon(Icons.folder_copy_outlined),
                      hintText: 'Entrer le module ',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ))),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                    onChanged: (val) {
                      setState(() {
                        data3 = val;
                      });
                    },
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      label: Text(" Salle / Amphi "),
                      suffixIcon: Icon(Icons.meeting_room_outlined),
                      hintText: 'Entrer la numéro de la salle / amphi',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ))),
            const SizedBox(height: 30),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                    onChanged: (val) {
                      setState(() {
                        data4 = val;
                      });
                    },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 165.0,
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        data5 = val;
                      });
                    },
                    decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        label: Text("Heure de début  "),
                        hintText: '      00 : 00 ',
                        suffixIcon: Icon(Icons.timer_outlined),
                        hintStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 165.0,
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        data6 = val;
                      });
                    },
                    decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        label: Text("Heure de fin "),
                        hintText: '      00 : 00 ',
                        suffixIcon: Icon(Icons.timer_off_outlined),
                        hintStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   child: MaterialButton(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20)),
            //     padding: const EdgeInsets.symmetric(vertical: 13),
            //     onPressed: () {},
            //     color: Color.fromARGB(255, 14, 239, 186),
            //     textColor: Colors.white,
            //     child: const Text(
            //       "Génére le code QR",
            //       style: TextStyle(fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // )
          ],
        ));
  }
}
