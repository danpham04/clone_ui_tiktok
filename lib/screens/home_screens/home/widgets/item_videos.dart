import 'package:clone_ui_tiktok/screens/home_screens/home/widgets/item_react.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:video_player/video_player.dart';

class ItemVideos extends StatefulWidget {
  const ItemVideos({
    super.key,
    required this.url,
    required this.text,
    this.subText = '',
    required this.img,
    this.favorite,
    this.message,
    this.save,
    this.share,
  });
  final String url;
  final String text;
  final String subText;
  final String img;
  final int? favorite;
  final int? message;
  final int? save;
  final int? share;

  @override
  State<ItemVideos> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideos> {
  late StoreHome videoStore;

  @override
  void initState() {
    // _controller = VideoPlayerController.asset(widget.url)
    //   // _controller.addListener(() {});
    //   ..setLooping(true)
    //   ..initialize().then((_) {
    //     setState(() {});
    //   });
    // _controller.play();
    videoStore = StoreHome();
    videoStore.initialize(widget.url);
    super.initState();
  }

  @override
  void dispose() {
    videoStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        GestureDetector(
          child: Observer(
            builder: (context) {
              return VideoPlayer(videoStore.controller);
            },
          ),
          onTap: () {
            videoStore.togglePlayPause();
            // setState(() {
            //   if (_isPlaying) {
            //     _controller.pause();
            //   } else {
            //     _controller.play();
            //   }
            //   _isPlaying = !_isPlaying;
            // });
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
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.img),
                  radius: 23,
                ),
              ),
              ItemReact(
                icon: Icons.favorite,
                text: widget.favorite ?? 200,
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.message,
                text: widget.message ?? 200,
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.bookmark,
                text: widget.save ?? 200,
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.screen_share_outlined,
                text: widget.share ?? 200,
                onPressed: () {},
              )
            ],
          ),
        ),
        Positioned(
          bottom: size.height * 0.4,
          left: size.width * 0.41,
          // child: _isPlaying
          //     ? const Text('')
          //     : const Icon(
          //         Icons.play_arrow,
          //         color: Colors.white,
          //         size: 70,
          //       ),
          child: Observer(
            builder: (context) {
              return videoStore.isPlaying
                  ? const Text('')
                  : const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 70,
                    );
            },
          ),
        )
      ],
    );
  }
}
