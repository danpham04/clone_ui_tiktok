import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/screens/home_screens/camera/camera.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/home.dart';
import 'package:clone_ui_tiktok/screens/home_screens/inbox/inbox.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/profile.dart';
import 'package:clone_ui_tiktok/screens/home_screens/shop/shop.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  final _widgets = [
    const Home(),
    const Shop(),
    const Camera(),
    const Inbox(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_index],
      bottomNavigationBar: BottomNavigationBar(
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
                  width: 50,
                )),
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
        iconSize: 30,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        currentIndex: _index,
      ),
    );
  }
}
