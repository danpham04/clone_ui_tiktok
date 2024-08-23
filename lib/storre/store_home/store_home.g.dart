// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreHome on _StoreHome, Store {
  late final _$currentIndexAtom =
      Atom(name: '_StoreHome.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$videoAtom = Atom(name: '_StoreHome.video', context: context);

  @override
  List<VideoModel> get video {
    _$videoAtom.reportRead();
    return super.video;
  }

  @override
  set video(List<VideoModel> value) {
    _$videoAtom.reportWrite(value, super.video, () {
      super.video = value;
    });
  }

  late final _$isPlayingAtom =
      Atom(name: '_StoreHome.isPlaying', context: context);

  @override
  bool get isPlaying {
    _$isPlayingAtom.reportRead();
    return super.isPlaying;
  }

  @override
  set isPlaying(bool value) {
    _$isPlayingAtom.reportWrite(value, super.isPlaying, () {
      super.isPlaying = value;
    });
  }

  late final _$isFollowingAtom =
      Atom(name: '_StoreHome.isFollowing', context: context);

  @override
  bool get isFollowing {
    _$isFollowingAtom.reportRead();
    return super.isFollowing;
  }

  @override
  set isFollowing(bool value) {
    _$isFollowingAtom.reportWrite(value, super.isFollowing, () {
      super.isFollowing = value;
    });
  }

  late final _$favoriteAtom =
      Atom(name: '_StoreHome.favorite', context: context);

  @override
  int get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(int value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  late final _$messageAtom = Atom(name: '_StoreHome.message', context: context);

  @override
  String get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  late final _$checkfavoriteAtom =
      Atom(name: '_StoreHome.checkfavorite', context: context);

  @override
  bool get checkfavorite {
    _$checkfavoriteAtom.reportRead();
    return super.checkfavorite;
  }

  @override
  set checkfavorite(bool value) {
    _$checkfavoriteAtom.reportWrite(value, super.checkfavorite, () {
      super.checkfavorite = value;
    });
  }

  late final _$getDataAsyncAction =
      AsyncAction('_StoreHome.getData', context: context);

  @override
  Future<void> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  late final _$initializeAsyncAction =
      AsyncAction('_StoreHome.initialize', context: context);

  @override
  Future<void> initialize(String url) {
    return _$initializeAsyncAction.run(() => super.initialize(url));
  }

  late final _$disposeAsyncAction =
      AsyncAction('_StoreHome.dispose', context: context);

  @override
  Future<void> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }

  late final _$updateFavoriteAsyncAction =
      AsyncAction('_StoreHome.updateFavorite', context: context);

  @override
  Future<bool> updateFavorite(
      {required String id, required VideoModel videos}) {
    return _$updateFavoriteAsyncAction
        .run(() => super.updateFavorite(id: id, videos: videos));
  }

  late final _$_StoreHomeActionController =
      ActionController(name: '_StoreHome', context: context);

  @override
  void setCurrentIndex(int index) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void play() {
    final _$actionInfo =
        _$_StoreHomeActionController.startAction(name: '_StoreHome.play');
    try {
      return super.play();
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pause() {
    final _$actionInfo =
        _$_StoreHomeActionController.startAction(name: '_StoreHome.pause');
    try {
      return super.pause();
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePlayPause() {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.togglePlayPause');
    try {
      return super.togglePlayPause();
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleFollow() {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.toggleFollow');
    try {
      return super.toggleFollow();
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void countFavorite(int updateFavorite) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.countFavorite');
    try {
      return super.countFavorite(updateFavorite);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCheckFavorite(bool setcheckfavorite) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.setCheckFavorite');
    try {
      return super.setCheckFavorite(setcheckfavorite);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavorite(int setfavorite) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.setFavorite');
    try {
      return super.setFavorite(setfavorite);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
video: ${video},
isPlaying: ${isPlaying},
isFollowing: ${isFollowing},
favorite: ${favorite},
message: ${message},
checkfavorite: ${checkfavorite}
    ''';
  }
}
