import 'package:clone_ui_tiktok/global/app_paths.dart';
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
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide.none)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(AppPaths().caPi),
                    radius: 80,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 221, 204, 203),
                    radius: 80,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.videocam_outlined,
                          size: 40,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
