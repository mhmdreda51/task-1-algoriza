import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 15,
    this.borderRadius = 15,
    this.width = double.infinity,
    required this.onTap,
    this.height = 35,
    required this.color,
    required this.text,
  }) : super(key: key);
  final VoidCallback onTap;
  final double height;
  final double width;
  final double borderRadius;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
