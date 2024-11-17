import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointageapp/core/constant/routesnames.dart';

class TaskTitle extends StatelessWidget {
  final List<Map<String, dynamic>>? dec;
  final String text;

  const TaskTitle({super.key, this.dec, required this.text});

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
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.1)),
              child: Row(
                children: [
                  Text(
                    'Générer code QR du séance ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 20, 20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.offAllNamed(AppRoute.generationQrCode);
                      },
                      child: Icon(Icons.qr_code))
                ],
              ),
            )
          ],
        ));
  }
}
