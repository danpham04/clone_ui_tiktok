import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class ListTileApp extends StatelessWidget {
  const ListTileApp({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    this.colorIcon,
    this.showSubTitle = true, required this.iconTile, this.size,
  });
  final String title;
  final IconData icon;
  final IconData iconTile;
  final Color? color;
  final Color? colorIcon;
  final bool showSubTitle;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(
            iconTile,
            color: colorIcon,
            size: size,
          ),
        ),
        title: TextApp(text: title),
        trailing: Icon(icon),
      ),
    );
  }
}
