import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          title: 'Tik Tok',
          // theme: ThemeData.dark(),
          onGenerateRoute: AppRouters.onGenerateRoute,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
