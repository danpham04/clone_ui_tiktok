import 'package:flutter/material.dart';

class TabApp extends StatelessWidget {
  const TabApp({super.key, this.icon, this.colorText = Colors.white, this.colorIcon = Colors.white, this.widget});
  
  final IconData? icon;
  final Widget? widget;
  final Color? colorIcon;
  final Color? colorText;
  
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(icon),
      child: widget,

    );
  }
}
