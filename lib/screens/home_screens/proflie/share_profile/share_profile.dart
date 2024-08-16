import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class ShareProfile extends StatelessWidget {
  const ShareProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(127, 188, 238, 1),
            Color.fromARGB(255, 39, 150, 241),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonItem(
                    icon: Icons.arrow_back_ios,
                    onPressed: () => Navigator.pop(context),
                  ),
                  ButtonItem(
                    icon: Icons.qr_code_scanner_rounded,
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              // width: 700,
              height: size.height * 0.8,
              child: Stack(
                children: [
                  Positioned(
                    top: size.width * 0.2,
                    left: size.width * 0.13,
                    child: Container(
                        width: size.width * 0.75,
                        height: size.height * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80,
                            ),
                            Icon(
                              Icons.qr_code_scanner_rounded,
                              size: 200,
                            ),
                            TextApp(text: 'Copy link')
                          ],
                        )),
                  ),
                  Positioned(
                    left: size.width * 0.38,
                    top: size.height * 0.03,
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(AppPaths().caPi),
                              radius: 45,
                            ),
                          ),
                          //TODO:
                          const TextApp(
                            text: 'Capipara',
                            size: 25,
                            weightText: FontWeight.bold,
                          ),
                          const TextApp(text: '@Capi_haha')
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.13,
                    bottom: size.height * 0.2,
                    child: Container(
                      width: size.width * 0.36,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 18.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.link,
                              size: 30,
                            ),
                            TextApp(text: 'Copy link')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: size.width * 0.13,
                    bottom: size.height * 0.2,
                    child: Container(
                        width: size.width * 0.36,
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                size: 30,
                              ),
                              TextApp(text: 'Share link')
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
