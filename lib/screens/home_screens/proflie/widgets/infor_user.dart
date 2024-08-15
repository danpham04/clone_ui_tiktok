import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/size_box_profile.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class InforUser extends StatelessWidget {
  const InforUser({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            AppPaths().caPi,
            width: size.width * 0.28,
            height: size.height * 0.13,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 18.0),
          child: TextApp(
            text: '@capi_haha',
            size: 15,
            weightText: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(AppRouters.follow),
              child: SizeBoxProfile(
                label: 'Following',
                number: '150',
                sizeWidth: size.width * 0.2,
                sizeHeigth: 50,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(AppRouters.follow),
              child: SizeBoxProfile(
                label: 'Followers',
                number: '50',
                sizeWidth: size.width * 0.23,
                sizeHeigth: 50,
              ),
            ),
            SizeBoxProfile(
              label: 'Likes',
              number: '200',
              sizeWidth: size.width * 0.23,
              sizeHeigth: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonProfile(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouters.editProfile);
              },
              borderBox: 5,
              color: const Color.fromARGB(255, 212, 210, 203),
              child: const TextApp(
                text: 'Edit profile',
                color: Colors.black,
              ),
            ),
            ButtonProfile(
              onPressed: () {},
              borderBox: 5,
              color: const Color.fromARGB(255, 212, 210, 203),
              child: const TextApp(
                text: 'Share profile',
                color: Colors.black,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 210, 203),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              width: size.width * 0.1,
              // height: size.height * 0.1,
              child: ButtonItem(
                icon: Icons.person_add_alt_1,
                size: 25,
                onPressed: () {},
              ),
            )
          ],
        ),
        SizedBox(
          height: size.width * 0.1,
          child: const ButtonProfile(
              borderBox: 3,
              child: TextApp(
                text: '+ Add bio',
                color: Colors.black,
                size: 13,
              )),
        ),
      ],
    );
  }
}
