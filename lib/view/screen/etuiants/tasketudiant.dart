import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/constant/routesnames.dart';

class TaskTitleEtuidant extends StatelessWidget {
  final List<Map<String, dynamic>>? dec;
  final String text;

  const TaskTitleEtuidant({super.key, this.dec, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
