import 'package:flutter/material.dart';

class CustomTextSignUpAndLogin extends StatelessWidget {
  final String text;
  final String texttwo;
  final void Function() onTap;
  const CustomTextSignUpAndLogin(
      {super.key,
      required this.text,
      required this.texttwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          texttwo,
          style: const TextStyle(fontSize: 12),
        ),
        Row(
          children: [
            InkWell(
              onTap: onTap,
              child: Text(
                text,
                style: const TextStyle(
                    color: Color.fromARGB(255, 194, 12, 203),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: const Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 174, 0, 163),
                size: 15,
              ),
            )
          ],
        )
      ],
    );
  }
}
