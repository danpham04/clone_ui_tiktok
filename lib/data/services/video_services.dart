import 'package:clone_ui_tiktok/config/base_config.dart';
import 'package:clone_ui_tiktok/data/api/rest_client.dart';
import 'package:clone_ui_tiktok/data/model/video_model.dart';
import 'package:clone_ui_tiktok/data/repository/video_repository.dart';

class VideoServices extends VideoRepository {
  final RestClient _restClient = RestClient(url: BaseConfig().api_video);
  @override
  Future<List<VideoModel>> getData({String? key, String? value}) async {
    try {
      final response = await _restClient.get('/apihome');
      if(response is List<dynamic>){
        final video = response;
        final List<VideoModel> loadData = video.map((e) {
          return VideoModel.fromJson(e);
        }).toList();
        return loadData;
      }
    } catch (e) {
      rethrow;
    }
    throw UnimplementedError();
  }
}