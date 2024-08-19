import 'package:clone_ui_tiktok/global/app_paths.dart';
import 'package:clone_ui_tiktok/screens/home_screens/inbox/widgets/inbox_data.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';

class FriendUser extends StatelessWidget {
  const FriendUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 43,
                backgroundImage: AssetImage(AppPaths().caPiChill),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    AppPaths().caPi,
                  ),
                ),
              ),
              
            ],
          ),
          Row(
            children: List.generate(InboxData().inboxData.length, (index) {
              final data = InboxData().inboxData[index];
              return Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundImage: AssetImage(AppPaths().caPiChill),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          data['img'],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextApp(
                      text: data['name'],
                      weightText: FontWeight.bold,
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
