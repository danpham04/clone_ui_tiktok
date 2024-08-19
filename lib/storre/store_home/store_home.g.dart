// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreHome on _StoreHome, Store {
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

  late final _$_StoreHomeActionController =
      ActionController(name: '_StoreHome', context: context);

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
  String toString() {
    return '''
video: ${video},
isPlaying: ${isPlaying},
isFollowing: ${isFollowing}
    ''';
  }
}
