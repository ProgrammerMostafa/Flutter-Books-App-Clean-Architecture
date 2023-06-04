import 'package:flutter/material.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 50.0)),
      ),
      child: Text(
        text,
        style: Styles.defaultTextStyle(fontSize: 16).copyWith(
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
