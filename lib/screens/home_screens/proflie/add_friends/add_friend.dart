import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/list_tile_app.dart';
import 'package:flutter/material.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApplication(
        titleName: 'Find friends',
        colors: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search users',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            ListTileApp(
              title: 'Invite friends',
              icon: Icons.arrow_forward_ios,
              color: Colors.red[300],
              colorIcon: Colors.white,
              iconTile: Icons.notifications,
            ),
            ListTileApp(
              title: 'Find contacts',
              icon: Icons.arrow_forward_ios,
              color: Colors.green[300],
              colorIcon: Colors.white,
              iconTile: Icons.phone,
            ),
            ListTileApp(
              title: 'Invite friends',
              icon: Icons.arrow_forward_ios,
              color: Colors.white,
              colorIcon: Colors.blue[300],
              iconTile: Icons.facebook,
              size: 59,
            ),
            //TODO:
          ],
        ),
      ),
    );
  }
}
