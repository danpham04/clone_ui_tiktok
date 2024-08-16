import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/edit_proflie/edit_user.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApplication(
        titleName: 'Edit profile',
        heightAppBar: 70,
        colors: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppPaths().caPi),
                  radius: 50,
                ),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 221, 204, 203),
                  radius: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.videocam_outlined,
                        size: 40,
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 17.0, bottom: 8.0),
              child: TextApp(text: 'About you'),
            ),
            const EditUser(name: 'Name', userName: 'Capybara'),
            const EditUser(name: 'Username', userName: 'Capi_haha'),
            const EditUser(name: 'Bio', userName: 'Add a bio to your profile'),
            const Divider(),
            const EditUser(
                name: 'Instagram', userName: 'Add a Instagram to your profile'),
            const EditUser(
                name: 'Youtube', userName: 'Add a Youtube to your profile'),
          ],
        ),
      ),
    );
  }
}
