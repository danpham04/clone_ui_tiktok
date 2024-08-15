import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tik Tok',
      // theme: ThemeData.dark(),
      onGenerateRoute: AppRouters.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
