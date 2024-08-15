import 'package:clone_ui_tiktok/global/app_video.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/widgets/item_video.dart';
import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: [
            ItemVideo(
              url: AppVideo().videoA,
              text: 'Video 1',
              subText: 'xin chao buoi sang',
            ),
            ItemVideo(url: AppVideo().videoB, text: 'Video 2'),
            ItemVideo(url: AppVideo().videoC, text: 'Video 3'),
            ItemVideo(
                url: AppVideo().videoD,
                text: 'Video 4',
                subText: 'xin chao buoi sang'),
            ItemVideo(
                url: AppVideo().videoE,
                text: 'Video 5',
                subText: 'nong vai lo'),
          ],
        )
      ],
    );
  }
}
