import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppPaths().logoTikTok,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset(
                AppPaths().tikTok,
                height: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
