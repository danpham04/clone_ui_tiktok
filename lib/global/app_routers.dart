import 'package:clone_ui_tiktok/screens/home_screens/home_screen.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/edit_proflie/edit_profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/follow/follow.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/privacy_and_setting/privacy_setting.dart';
import 'package:clone_ui_tiktok/screens/wait_screen/wait_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static const String homeScreen = '/home_screen';
  static const String waitScreen = '/';
  static const String privacySetting = '/privacy_setting';
  static const String follow = '/follow';
  static const String editProfile = '/edit_profile';
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
