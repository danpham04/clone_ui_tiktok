import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home_screen.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/add_friends/add_friend.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/edit_proflie/edit_profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/follow/follow.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/privacy_and_setting/privacy_setting.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/share_profile/share_profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/show_user/show_user.dart';
import 'package:clone_ui_tiktok/screens/wait_screen/wait_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static const String homeScreen = '/home_screen';
  static const String waitScreen = '/';
  static const String privacySetting = '/privacy_setting';
  static const String follow = '/follow';
  static const String editProfile = '/edit_profile';
  static const String addFriend = '/add_friend';
  static const String shareProfile = '/share_profile';
  static const String showuser = '/show_user';
  static makeRouter({
    required BuildContext context,
    required String routeName,
    Object? argument,
  }) {
    switch (routeName) {
      case waitScreen:
        return const WaitScreen();
      case homeScreen:
        return const HomeScreen();
      case privacySetting:
        return const PrivacySetting();
      case follow:
        return const Follow();
      case editProfile:
        return const EditProfile();
      case addFriend:
        return const AddFriend();
      case shareProfile:
        return const ShareProfile();
      case showuser:
        return ShowUser(
          showUser: argument  as VideoModel,
        );
      default:
        throw 'Route  $routeName is not define';
    }
  }

  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => makeRouter(
          context: context,
          routeName: settings.name!,
          argument: settings.arguments),
    );
  }
}
