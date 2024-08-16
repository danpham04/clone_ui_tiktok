import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/data/services/video_services.dart';
import 'package:mobx/mobx.dart';
import 'package:video_player/video_player.dart';
part 'store_home.g.dart';

class StoreHome = _StoreHome with _$StoreHome;

abstract class _StoreHome with Store {
  final VideoServices _videoServices = VideoServices();
  @observable
  List<VideoModel> video = [];

  late VideoPlayerController controller;
  @observable
  bool isPlaying = true;

  @action
  Future<void> getData() async {
    try {
      List<VideoModel> temp = await _videoServices.getData();
      video = temp;
    } catch (e) {
      rethrow;
    }
  }

  @action
  Future<void> initialize(String url) async {
    controller = VideoPlayerController.asset(url)
      ..setLooping(true)
      ..initialize().then((_) {
        play();
      });
  }

  @action
  void play() {
    controller.play();
    isPlaying = true;
  }

  @action
  void pause() {
    controller.pause();
    isPlaying = false;
  }

  @action
  void togglePlayPause() {
    if (isPlaying) {
      pause();
    } else {
      play();
    }
  }

  @action
  Future<void> dispose() async {
    await controller.dispose();
  }
}
