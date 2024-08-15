import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class SizeBoxProfile extends StatelessWidget {
  const SizeBoxProfile(
      {super.key,
      required this.label,
      required this.number,
      this.sizeWidth,
      this.sizeHeigth});
  final String label;
  final String number;
  final double? sizeWidth;
  final double? sizeHeigth;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: sizeWidth,
      height: sizeHeigth,
      child: Column(
        children: [
          TextApp(
            text: number,
            weightText: FontWeight.bold,
            size: 17,
          ),
          TextApp(text: label)
        ],
      ),
    );
  }
}
