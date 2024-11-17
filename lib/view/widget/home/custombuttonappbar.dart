import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;
  final IconData iconData;

  final bool? active;
  const CustomButtonAppBar(
      {super.key,
      required this.textButton,
      required this.iconData,
      required this.onPressed,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: active == true
                ? Color(0xFF5EC2F4)
                : Color.fromARGB(255, 102, 102, 102),
          ),
          Text(
            textButton,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: active == true
                    ? Color(0xFF5EC2F4)
                    : Color.fromARGB(255, 169, 166, 166)),
          )
        ],
      ),
    );
  }
}
