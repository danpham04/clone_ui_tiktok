import 'package:clone_ui_tiktok/screens/home_screens/home/widgets/item_react.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ItemVideo extends StatefulWidget {
  const ItemVideo(
      {super.key,
      required this.url,
      required this.text,
      this.subText = '',
      required this.img});
  final String url;
  final String text;
  final String subText;
  final String img;
  @override
  State<ItemVideo> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
  late VideoPlayerController _controller;
  bool _isPlaying = true;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.url)
      // _controller.addListener(() {});
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        GestureDetector(
          child: VideoPlayer(_controller),
          onTap: () {
            setState(() {
              if (_isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
              _isPlaying = !_isPlaying;
            });
          },
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.8,
                child: TextApp(
                  text: widget.text,
                  size: 25,
                  color: Colors.white,
                  alignText: TextAlign.start,
                ),
              ),
              SizedBox(
                width: size.width * 0.8,
                child: TextApp(
                  text: widget.subText,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: 50,
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.img),
                radius: 23,
              ),
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
        ),
        Positioned(
          bottom: size.height * 0.4,
          left: size.width * 0.41,
          child: _isPlaying
              ? const Text('')
              : const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 70,
                ),
        )
      ],
    );
  }
}
