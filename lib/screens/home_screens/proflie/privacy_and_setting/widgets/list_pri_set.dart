import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class ListPriSet extends StatelessWidget {
  const ListPriSet(
      {super.key,
      required this.iconLea,
      required this.text,
      this.size,
      this.weightText,
      required this.iconTra,
      this.onTap});
  final IconData iconLea;
  final String text;
  final double? size;
  final FontWeight? weightText;
  final IconData iconTra;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconLea),
      title: TextApp(
        text: text,
        size: size,
        weightText: weightText,
      ),
      trailing: Icon(iconTra),
      onTap: onTap,
    );
  }
}
