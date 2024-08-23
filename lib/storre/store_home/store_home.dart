import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/data/services/video_services.dart';
import 'package:mobx/mobx.dart';
import 'package:video_player/video_player.dart';
part 'store_home.g.dart';

class StoreHome = _StoreHome with _$StoreHome;

abstract class _StoreHome with Store {
  final VideoServices _videoServices = VideoServices();
  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int index) {
    currentIndex = index;
  }

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

  @observable
  bool isFollowing = false;

  @action
  void toggleFollow() {
    isFollowing = !isFollowing;
  }

  @observable
  int favorite = 0;

  @observable
  String message = '';

  @observable
  bool checkfavorite = false;

  @action
  void countFavorite(int updateFavorite) {
    if (!checkfavorite) {
      favorite = updateFavorite + 1;
      checkfavorite = true;
    } else {
      favorite = updateFavorite - 1;
      checkfavorite = false;
    }
  }

  @action
  void setCheckFavorite(bool setcheckfavorite) {
    checkfavorite = setcheckfavorite;
  }

  @action
  void setFavorite(int setfavorite) {
    favorite = setfavorite;
  }

  @action
  Future<bool> updateFavorite(
      {required String id, required VideoModel videos}) async {
    VideoModel newVideo = VideoModel(
        video: videos.video,
        imgAvt: videos.imgAvt,
        userName: videos.userName,
        text: videos.text,
        textSong: videos.textSong,
        avtMusic: videos.avtMusic,
        favorite: favorite,
        message: videos.message,
        save: videos.save,
        share: videos.share,
        following: videos.following,
        followers: videos.followers,
        likes: videos.likes,
        nameAcc: videos.nameAcc,
        checkFavorite: checkfavorite);
    try {
      VideoModel video =
          await _videoServices.increaseFavorite(newUser: newVideo, id: id);
      message = '+1 yêu hích';

      return true;
    } catch (e) {
      message = 'lỗi tùy chọn';
      return false;
    }
  }
}
