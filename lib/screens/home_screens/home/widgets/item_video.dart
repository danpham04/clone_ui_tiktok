import 'package:clone_ui_tiktok/screens/home_screens/home/widgets/item_react.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ItemVideo extends StatefulWidget {
  const ItemVideo({super.key, required this.url, required this.text, this.subText = ''});
  final String url;
  final String text;
  final String subText;
  @override
  State<ItemVideo> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.url);
    _controller.addListener(() {});
    _controller.setLooping(true);
    _controller.initialize();
    _controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayer(_controller),
        Positioned(
          left: 20,
          bottom: 20,
          child: Column(
            children: [
              TextApp(
                text: widget.text,
                size: 25,
                color: Colors.white,
                alignText: TextAlign.start,
              ),
              TextApp(
                text: widget.subText ,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: 50,
          child: Column(
            children: [
              ItemReact(
                icon: Icons.favorite,
                text: '220',
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.message,
                text: '240',
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.bookmark,
                text: '20',
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.screen_share_outlined,
                text: '290',
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
