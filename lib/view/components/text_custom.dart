import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    super.key,
    required this.data,
    this.color,
    this.fontSize = 18,
    this.fontWeight = FontWeight.bold,
    this.textAlign,
  });

  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight, // 500 , 700 , 800
        fontSize: fontSize, // 18 for paragraghrs
        fontFamily: "HankenGrotesk",
      ),
    );
  }
}
