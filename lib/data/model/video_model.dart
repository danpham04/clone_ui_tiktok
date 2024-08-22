class VideoModel {
  final String video;
  final String imgAvt;
  final String userName;
  final String text;
  final String textSong;
  final String avtMusic;
  final int favorite;
  final int message;
  final int save;
  final int share;
  final int following;
  final int followers;
  final int likes;
  final String nameAcc;
  final String id;

  VideoModel({
    required this.video,
    required this.imgAvt,
    required this.userName,
    required this.text,
    required this.textSong,
    required this.avtMusic,
    required this.favorite,
    required this.message,
    required this.save,
    required this.share,
    required this.following,
    required this.followers,
    required this.likes,
    required this.nameAcc,
    this.id = '',
  });

  factory VideoModel.fromJson(Map<String, dynamic> map) {
    return VideoModel(
        video: map['video'],
        imgAvt: map['imgAvt'],
        userName: map['userName'],
        text: map['text'],
        textSong: map['textSong'],
        avtMusic: map['avtMusic'],
        favorite: map['favorite'],
        message: map['message'],
        save: map['save'],
        share: map['share'],
        nameAcc: map['nameAcc'],
        followers: map['followers'],
        following: map['following'],
        likes: map['likes'],
        id: map['id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'video': video,
      'imgAvt': imgAvt,
      'userName': userName,
      'text': text,
      'textSong': textSong,
      'avtMusic': avtMusic,
      'favorite': favorite,
      'message': message,
      'save': save,
      'share': share,
      'following': following,
      'followers': followers,
      'likes': likes,
      'nameAcc': nameAcc,
      'id': id
    };
  }

  
  VideoModel copyWith({
    String? video,
    String? imgAvt,
    String? userName,
    String? text,
    String? textSong,
    String? avtMusic,
    int? favorite,
    int? message,
    int? save,
    int? share,
    int? following,
    int? followers,
    int? likes,
    String? nameAcc,
    String? id,
  }) {
    return VideoModel(
      video: video ?? this.video,
      imgAvt: imgAvt ?? this.imgAvt,
      userName: userName ?? this.userName,
      text: text ?? this.text,
      textSong: textSong ?? this.textSong,
      avtMusic: avtMusic ?? this.avtMusic,
      favorite: favorite ?? this.favorite,
      message: message ?? this.message,
      save: save ?? this.save,
      share: share ?? this.share,
      following: following ?? this.following,
      followers: followers ?? this.followers,
      likes: likes ?? this.likes,
      nameAcc: nameAcc ?? this.nameAcc,
      id: id ?? this.id,
    );
  }
}
