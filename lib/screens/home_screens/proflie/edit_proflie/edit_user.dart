import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class EditUser extends StatelessWidget {
  const EditUser({super.key, required this.name, required this.userName});
  final String name;
  final String userName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: TextApp(
        text: name,
        size: 17,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextApp(
            text: userName,
            size: 13,
          ),
          const SizedBox(
            width: 3,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
          )
        ],
      ),
    );
  }
}
