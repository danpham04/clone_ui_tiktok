import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/screens/home_screens/home/widgets/item_video.dart';
import 'package:clone_ui_tiktok/storre/store_home/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Following extends StatefulWidget {
  const Following({super.key, required this.store});
  final StoreHome store;
  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {

  late StoreHome stores;

  @override
  void initState() {
    stores = widget.store;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: stores.video.length,
            itemBuilder: (context, index) {
              final VideoModel store = stores.video[index];
              return ItemVideo(
                url: store.video,
                text: store.userName,
                subText: store.text,
                img: store.imgAvt,
                favorite: store.favorite,
                message: store.message,
                save: store.save,
                share: store.share,
              );
            },
          )
        ],
      );
    });
  }
}
