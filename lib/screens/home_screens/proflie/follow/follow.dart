import 'package:clone_ui_tiktok/screens/home_screens/proflie/follow/followers.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/follow/following.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/follow/follw_friends.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/tab_app.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class Follow extends StatelessWidget {
  const Follow({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBarApplication(
          heightAppBar: 60,
          title: const TextApp(text: 'capi_haha'),
          actions: [
            ButtonItem(
              icon: Icons.person_add_alt,
              onPressed: () {},
            )
          ],
        ),
        body: const Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: TabBar(
                  indicatorColor: Colors.blue,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    TabApp(
                      widget: TextApp(
                        text: 'Following',
                        size: 13,
                        weightText: FontWeight.bold,
                      ),
                    ),
                    TabApp(
                      widget: TextApp(
                        text: 'Followes',
                        size: 13,
                        weightText: FontWeight.bold,
                      ),
                    ),
                    TabApp(
                      widget: TextApp(
                        text: 'Friends',
                        size: 13,
                        weightText: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: TabBarView(children: [
                Following(),
                Followers(),
                FollwFriends(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
