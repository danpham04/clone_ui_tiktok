import 'package:clone_ui_tiktok/screens/home_screens/home/following/following.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/for_you/for_you.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/friends/friends.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:clone_ui_tiktok/widgets/tab_app.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.store});
  final StoreHome store;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final StoreHome stores = StoreHome();
  late StoreHome stores;
  @override
  void initState() {
    stores = widget.store;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.sp),
      child: DefaultTabController(
        initialIndex: 2,
        length: 3,
        animationDuration: const Duration(seconds: 1),
        child: Scaffold(
          body: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0.sp),
                      child: IconButton(
                        icon: const Icon(Icons.live_tv_outlined),
                        iconSize: 30.sp,
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: TabBar(
                          indicatorColor: Colors.blue,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            TabApp(
                              widget: TextApp(
                                text: 'Friends',
                                size: 13.sp,
                                weightText: FontWeight.bold,
                              ),
                            ),
                            TabApp(
                              widget: TextApp(
                                text: 'Following',
                                size: 13.sp,
                                weightText: FontWeight.bold,
                              ),
                            ),
                            TabApp(
                              widget: TextApp(
                                text: 'For you',
                                size: 13.sp,
                                weightText: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0.sp),
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        iconSize: 30.sp,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 9,
                  child: TabBarView(
                    children: [
                      const Friends(),
                      Following(
                        store: stores,
                      ),
                      ForYou(
                        store: stores,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
