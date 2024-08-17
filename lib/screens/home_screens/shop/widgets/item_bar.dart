import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class ItemBar extends StatelessWidget {
  const ItemBar(
      {super.key,
      required this.name,
      required this.icon,
      this.size,
      required this.onPressed});
  final String name;
  final IconData icon;
  final double? size;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final Size sizes = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          SizedBox(
            width: sizes.width * 0.1,
            child: IconButton(onPressed: onPressed, icon: Icon(icon)),
          ),
          TextApp(
            text: name,
            size: size,
          )
        ],
      ),
    );
  }
}
