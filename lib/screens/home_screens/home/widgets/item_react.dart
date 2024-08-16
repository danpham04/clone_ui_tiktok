import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class ItemReact extends StatelessWidget {
  const ItemReact(
      {super.key, required this.icon, required this.text, this.onPressed});
  final IconData icon;
  final int text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ButtonItem(
            icon: icon,
            onPressed: onPressed,
            color: Colors.white,
            size: 40,
          ),
          TextApp(
            text: text.toString(),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
