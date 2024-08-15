import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp(
      {super.key,
      required this.text,
      this.size,
      this.color,
      this.weightText,
      this.wordText,
      this.letterText, this.alignText});
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weightText;
  final double? wordText;
  final double? letterText;
  final TextAlign? alignText;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: alignText,
      text,
      style: TextStyle(
        
        fontSize: size,
        color: color,
        fontWeight: weightText,
        letterSpacing: letterText,
        wordSpacing: wordText,
      ),
    );
  }
}
