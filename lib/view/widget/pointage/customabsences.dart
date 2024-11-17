import 'package:flutter/material.dart';

class CustomAbsence extends StatelessWidget {
  final String title;
  final Color bgColor;
  final String slot;
  final String date;
  final String salle;

  const CustomAbsence(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.slot,
      required this.date,
      required this.salle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
          color: bgColor,
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
        SizedBox(width: 2),
        Text(
          title,
          style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        SizedBox(width: 2),
        Text(
          slot,
          style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        SizedBox(width: 2),
        Text(
          date,
          style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        SizedBox(height: 40),
        SizedBox(width: 35),
        Text(
          salle,
          style: TextStyle(
              color: Color.fromARGB(255, 12, 7, 7),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        SizedBox(width: 30),
      ]),
    );
  }
}
