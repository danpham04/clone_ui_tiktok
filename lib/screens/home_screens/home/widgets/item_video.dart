import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/global/app_routers.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/widgets/item_react.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:video_player/video_player.dart';

class ItemVideo extends StatefulWidget {
  const ItemVideo({
    super.key,
    required this.user,
  });

  final VideoModel user;
  @override
  State<ItemVideo> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
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
    videoStore.initialize(widget.user.video);
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
                  text: widget.user.userName,
                  size: 25,
                  color: Colors.white,
                  alignText: TextAlign.start,
                ),
              ),
              SizedBox(
                width: size.width * 0.8,
                child: TextApp(
                  text: widget.user.text,
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
                onTap: () => Navigator.of(context)
                    .pushNamed(AppRouters.showuser, arguments: widget.user),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.user.imgAvt),
                  radius: 23,
                ),
              ),
              ItemReact(
                icon: Icons.favorite,
                text: widget.user.favorite,
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.message,
                text: widget.user.message,
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.bookmark,
                text: widget.user.save,
                onPressed: () {},
              ),
              ItemReact(
                icon: Icons.screen_share_outlined,
                text: widget.user.share,
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
