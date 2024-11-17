import 'package:flutter/material.dart';
import 'package:pointageapp/core/constant/color.dart';

class CustomTaches extends StatelessWidget {
  final IconData iconData;
  final String? title;
  final Color bgColor;
  final Color iconColor;
  final void Function()? onTap;

  const CustomTaches({
    super.key,
    required this.iconData,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(20)),
        height: 175,
        width: 175,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: iconColor,
              size: 35,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
