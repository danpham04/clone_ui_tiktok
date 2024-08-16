import 'package:clone_ui_tiktok/screens/home_screens/home/following/following.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/for_you/for_you.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/friends/friends.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:clone_ui_tiktok/widgets/tab_app.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final StoreHome stores = StoreHome();
  @override
  void initState() {
    stores.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: DefaultTabController(
          length: 3,
          animationDuration: const Duration(seconds: 1),
          child: Scaffold(
            body: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: IconButton(
                        icon: const Icon(Icons.live_tv_outlined),
                        iconSize: 30,
                        onPressed: () {},
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: TabBar(
                          indicatorColor: Colors.blue,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            TabApp(
                              widget: TextApp(
                                text: 'Friends',
                                size: 13,
                                weightText: FontWeight.bold,
                              ),
                            ),
                            TabApp(
                              widget: TextApp(
                                text: 'Following',
                                size: 13,
                                weightText: FontWeight.bold,
                              ),
                            ),
                            TabApp(
                              widget: TextApp(
                                text: 'For you',
                                size: 13,
                                weightText: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        iconSize: 30,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 9,
                  child: TabBarView(children: [
                    const Friends(),
                    Following(
                      store: stores,
                    ),
                    const ForYou(),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
