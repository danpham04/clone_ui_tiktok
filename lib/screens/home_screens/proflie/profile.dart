import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/user_librarys/favorite_user.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/user_librarys/lock_user.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/user_librarys/menu_user.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/user_librarys/save_user.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/infor_user.dart';
import 'package:clone_ui_tiktok/widgets/tab_app.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: DefaultTabController(
        length: 4,
        animationDuration: const Duration(seconds: 1),
        child: Scaffold(
          appBar: AppBarApplication(
            heightAppBar: 60,
            leading: ButtonItem(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouters.addFriend);
              },
              icon: Icons.person_add_alt_outlined,
            ),
            //TODO:
            titleName: 'Capybara',
            padding: 9,
            fontSize: 25,
            colors: Colors.black,
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRouters.privacySetting);
                },
                icon: const Icon(Icons.menu),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const InforUser(),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  // width: double.infinity,
                  height: 50,
                  child: TabBar(
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 2,
                    tabs: [
                      TabApp(
                        icon: Icons.format_list_numbered_sharp,
                      ),
                      TabApp(
                        icon: Icons.lock_outline,
                      ),
                      TabApp(
                        icon: Icons.bookmark_border,
                      ),
                      TabApp(
                        icon: Icons.favorite_outline_outlined,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: const TabBarView(
                    children: [
                      MenuUser(),
                      LockUser(),
                      SaveUser(),
                      FavoriteUser(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
