import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/size_box_profile.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class Infor extends StatelessWidget {
  const Infor({super.key, required this.user});
  final VideoModel user;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipOval(
          child: Image.network(
            user.imgAvt,
            width: size.width * 0.28,
            height: size.height * 0.13,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 18.0),
          child: TextApp(
            text: ' @ ${user.nameAcc}',
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
                number: user.following.toString(),
                sizeWidth: size.width * 0.23,
                sizeHeigth: 50,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(AppRouters.follow),
              child: SizeBoxProfile(
                label: 'Followers',
                number: user.followers.toString(),
                sizeWidth: size.width * 0.23,
                sizeHeigth: 50,
              ),
            ),
            SizeBoxProfile(
              label: 'Likes',
              number: user.likes.toString(),
              sizeWidth: size.width * 0.23,
              sizeHeigth: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonProfile(
              onPressed: () {},
              borderBox: 5,
              color: const Color.fromARGB(255, 230, 56, 56),
              child: const TextApp(
                text: 'Follow',
                color: Colors.black,
              ),
            ),
            ButtonProfile(
              onPressed: () {},
              borderBox: 5,
              color: const Color.fromARGB(255, 212, 210, 203),
              child: const TextApp(
                text: 'Message',
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
                icon: Icons.arrow_drop_down,
                size: 25,
                onPressed: () {},
              ),
            )
          ],
        ),
      ],
    );
  }
}
