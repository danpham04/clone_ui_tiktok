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
            heightAppBar: 80,
            leading: ButtonItem(
              onPressed: () {},
              icon: Icons.person_add_alt_outlined,
            ),
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
                onPressed: () {},
                icon: const Icon(Icons.menu),
              )
            ],
          ),
          body: const Column(
            children: [
              InforUser(),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TabBar(
                    indicatorColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.label,
                    // dividerHeight: 3,
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
              ),
              Expanded(
                flex: 9,
                child: TabBarView(
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
    );
  }
}
