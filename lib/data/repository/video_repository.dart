import 'package:clone_ui_tiktok/data/model/video_model.dart';

abstract class VideoRepository {
  Future<List<VideoModel>> getData();
  Future<VideoModel> increaseFavorite({required VideoModel newUser,required String id});
}
