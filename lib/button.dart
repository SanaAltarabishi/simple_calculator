import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final List<Color> color;
  final textColor;
  final String buttonText;
  final buttonTapped;
  const MyButton(
      {super.key,
      required this.color,
      this.textColor,
      required this.buttonText, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: color)),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
