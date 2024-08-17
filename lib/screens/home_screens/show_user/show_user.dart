import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/screens/home_screens/show_user/infor.dart';
import 'package:clone_ui_tiktok/screens/home_screens/show_user/menu/menu.dart';
import 'package:clone_ui_tiktok/screens/home_screens/show_user/reposted/reposted.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/tab_app.dart';
import 'package:flutter/material.dart';

class ShowUser extends StatelessWidget {
  const ShowUser({super.key, required this.showUser});
  final VideoModel showUser;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBarApplication(
          titleName: showUser.nameAcc,
          colors: Colors.black,
          actions: const [
            Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.share_outlined,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Infor(user: showUser),
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
                      icon: Icons.swap_vert,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const TabBarView(
                  children: [
                    Menu(),
                    Reposted(),
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
