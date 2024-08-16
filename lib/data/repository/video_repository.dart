import 'package:clone_ui_tiktok/data/model/video_model.dart';

abstract class VideoRepository {
    Future<List<VideoModel>> getData({String? key, String? value});

}