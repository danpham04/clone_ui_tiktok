import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:flutter/material.dart';

class ShowUser extends StatelessWidget {
  const ShowUser({super.key, required this.showUser});
  final VideoModel showUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApplication(
        titleName: showUser.nameAcc,
        colors: Colors.black,
      ),
      body: Container(),
    );
  }
}
