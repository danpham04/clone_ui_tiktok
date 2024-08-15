import 'package:clone_ui_tiktok/screens/home_screens/inbox/widgets/friend_user.dart';
import 'package:clone_ui_tiktok/screens/home_screens/inbox/widgets/frined_user_inbox.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApplication(
        heightAppBar: 60,
        titleName: 'Inbox',
        colors: Colors.black,
        fontSize: 23,
        padding: 10,
        fontWeight: FontWeight.bold,
        leading: ButtonItem(
          onPressed: () {},
          icon: Icons.add_circle_outline,
          size: 30,
        ),
        actions: [
          ButtonItem(
            icon: Icons.search,
            onPressed: () {},
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FriendUser(),
            const Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue[400],
                child: const Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
              ),
              title: const TextApp(text: 'New followers'),
              subtitle: const TextApp(text: 'Thong bao moi'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red[400],
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              title: const TextApp(text: 'Activities'),
              subtitle: const TextApp(text: 'Thong bao moi'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: FrinedUserInbox(),
            ),
          ],
        ),
      ),
    );
  }
}
