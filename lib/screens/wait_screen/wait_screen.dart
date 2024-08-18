import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitScreen extends StatefulWidget {
  const WaitScreen({super.key});

  @override
  State<WaitScreen> createState() => _WaitScreenState();
}

class _WaitScreenState extends State<WaitScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 5), () {
        if (mounted) {
          Navigator.of(context).pushNamed(AppRouters.homeScreen);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
          414, 896), // Đặt kích thước thiết kế (chiều rộng, chiều cao)
      minTextAdapt:
          true, // Điều chỉnh kích thước chữ tối thiểu theo chiều rộng màn hình
      splitScreenMode: true, // Hỗ trợ chế độ màn hình chia đôi
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppPaths().logoTikTok,
                  height: 100.sp,
                ),
                20.verticalSpace,
                Image.asset(
                  AppPaths().tikTok,
                  height: 30.sp,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
