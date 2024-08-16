import 'package:clone_ui_tiktok/screens/home_screens/proflie/privacy_and_setting/widgets/list_pri_set.dart';
import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class PrivacySetting extends StatelessWidget {
  const PrivacySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApplication(
        heightAppBar: 70,
        title: const TextApp(
          text: 'Privacy and settings',
          weightText: FontWeight.bold,
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 8.0),
              child: TextApp(
                text: 'Account',
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 239, 232)),
                child: Column(
                  children: [
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.person,
                        text: 'Account',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.lock_outline,
                        text: 'Privacy',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.security_outlined,
                        text: 'Security & permissions',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.shopping_cart,
                        text: 'Your orders',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.share_sharp,
                        text: 'Share profile',
                        iconTra: Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 5.0),
              child: TextApp(
                text: 'Content & Display',
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 239, 232)),
                child: Column(
                  children: [
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.notifications,
                        text: 'Notifications',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.live_tv,
                        text: 'Live',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.music_note_sharp,
                        text: 'Music',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.more_time,
                        text: 'Acitvity center',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.videocam_sharp,
                        text: 'Content preferences',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.volume_down_sharp,
                        text: 'Ads',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.video_settings,
                        text: 'Playback',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.language,
                        text: 'Language',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.nightlight,
                        text: 'Display',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.hourglass_bottom_rounded,
                        text: 'Screen time',
                        iconTra: Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 8.0),
              child: TextApp(
                text: 'Support & Login',
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 239, 232)),
                child: Column(
                  children: [
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.flag,
                        text: 'Report a problem',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.messenger_outlined,
                        text: 'Support',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.warning,
                        text: 'Tems and Policies ',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.swap_horizontal_circle,
                        text: 'Switch account',
                        iconTra: Icons.arrow_forward_ios),
                    ListPriSet(
                        onTap: () {},
                        iconLea: Icons.logout,
                        text: 'Log out',
                        iconTra: Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
