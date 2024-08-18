import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/size_box_profile.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Infor extends StatefulWidget {
  const Infor({super.key, required this.user});
  final VideoModel user;

  @override
  State<Infor> createState() => _InforState();
}

class _InforState extends State<Infor> {
  final StoreHome store = StoreHome();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipOval(
          child: Image.network(
            widget.user.imgAvt,
            width: size.width * 0.28,
            height: size.height * 0.13,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 18.0),
          child: TextApp(
            text: ' @ ${widget.user.nameAcc}',
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
                number: widget.user.following.toString(),
                sizeWidth: size.width * 0.23,
                sizeHeigth: 50,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(AppRouters.follow),
              child: SizeBoxProfile(
                label: 'Followers',
                number: widget.user.followers.toString(),
                sizeWidth: size.width * 0.23,
                sizeHeigth: 50,
              ),
            ),
            SizeBoxProfile(
              label: 'Likes',
              number: widget.user.likes.toString(),
              sizeWidth: size.width * 0.23,
              sizeHeigth: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) {
                return ButtonProfile(
                  onPressed: () {
                    store.toggleFollow();
                  },
                  borderBox: 5,
                  color: store.isFollowing
                      ? Colors.green
                      : const Color.fromARGB(255, 230, 56, 56),
                  child: store.isFollowing
                      ? const Icon(Icons.person_add_alt_rounded)
                      : const TextApp(
                          text: 'Follow',
                          color: Colors.black,
                        ),
                );
              },
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
