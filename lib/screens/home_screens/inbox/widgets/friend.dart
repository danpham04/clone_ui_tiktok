import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  const Friend({super.key, required this.data});
  final data;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 1, left: 4),
      child: ListTile(
        leading: ClipOval(
          child: Image.asset(
            data['img'],
            width: size.width * 0.14,
            height: size.width * 0.14,
            fit: BoxFit.cover,
          ),
        ),
        title: TextApp(
          text: data['name'],
        ),
        subtitle: const TextApp(text: 'Thông báo'),
        trailing: ButtonItem(
          icon: Icons.camera_alt_outlined,
          onPressed: () {},
        ),
        onTap: () {},
      ),
    );
  }
}
