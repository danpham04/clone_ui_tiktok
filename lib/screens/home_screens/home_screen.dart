import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/screens/home_screens/camera/camera.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/home.dart';
import 'package:clone_ui_tiktok/screens/home_screens/inbox/inbox.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/shop/shop.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final StoreHome stores = StoreHome();
  late final List<Widget> _widgets;

  @override
  void initState() {
    stores.getData();
    _widgets = [
      Home(store: stores),
      const Shop(),
      const Camera(),
      const Inbox(),
      const Profile(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Observer(
          builder: (context) => _widgets[stores.currentIndex],
        ),
        bottomNavigationBar: Observer(
          builder: (context) {
            return BottomNavigationBar(
              //
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.store_outlined),
                    activeIcon: Icon(Icons.store),
                    label: 'Shop'),
                BottomNavigationBarItem(
                  label: '',
                  icon: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      AppPaths().chupanh,
                      width: 50.sp,
                    ),
                  ),
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.inbox_outlined),
                    activeIcon: Icon(Icons.inbox),
                    label: 'Inbox'),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    activeIcon: Icon(Icons.person),
                    label: 'Profile'),
              ],
              iconSize: 30.sp,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType
                  .fixed, // hiển thị bottom bar hiển thị theo dạng kích thuowvs và khoảng cách cố định
              // type: BottomNavigationBarType.shifting,
              showSelectedLabels:
                  true, // hiển thị label của tab khi đang ở tab đó - false khi đang đứng ở tab nào thì label của nó biết mất
              showUnselectedLabels:
                  true, // hiển thị label của tab khác - false ko show label của tab còn lại
              selectedItemColor: Colors
                  .blue, // hiển thị màu của phần tử đó khi được chọn đến tab đó

              unselectedItemColor: Colors
                  .grey, // hiển thị màu của phần tử khác khi nó ko được chọn
              onTap: (value) {
                stores.setCurrentIndex(value);
              },
              // currentIndex: để theo dõi tab hiện tại, lưu vị trí hiện tại của tab khi điểu hướng
              currentIndex: stores.currentIndex,
            );
          },
        ));
  }
}
