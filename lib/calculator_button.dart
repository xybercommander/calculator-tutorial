import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final VoidCallback onpressedFuntion;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  // Constructor of the class
  const CalculatorButton({
    super.key,
    required this.onpressedFuntion,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: MaterialButton(
        onPressed: onpressedFuntion,
        color: buttonColor,
        shape: CircleBorder(),
        child: Text("$buttonText", style: TextStyle(color: textColor, fontSize: 28),),
      ),
    );
  }
}