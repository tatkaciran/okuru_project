import 'package:flutter_sound/flutter_sound.dart';

class OKVoiceRecorder {
  FlutterSoundRecorder? _myRecorder;
  bool _mRecorderIsInited = false;
  final Codec _codec = Codec.aacADTS;
  final String _mPath = 'tau_file.aac';

  bool get isRecording => _myRecorder?.isRecording ?? false;

  void init() {
    _myRecorder = FlutterSoundRecorder();
    _myRecorder?.openRecorder().then((value) => _mRecorderIsInited = true);
  }

  void dispose() {
    _myRecorder?.closeRecorder();
    _mRecorderIsInited = false;
    _myRecorder = null;
  }

  Future<void> record() async {
    await _myRecorder?.startRecorder(
      codec: _codec,
      toFile: _mPath,
    );
  }

  Future<void> stopRecorder() async {
    await _myRecorder?.stopRecorder();
  }
}

class OKRecordedVoicePlayer {
  FlutterSoundPlayer? _myPlayer;
  bool _mPlayerIsInited = false;
  final Codec _codec = Codec.aacADTS;
  final String _mPath = 'tau_file.aac';

  void init() {
    _myPlayer = FlutterSoundPlayer();
    _myPlayer?.openPlayer().then((value) => _mPlayerIsInited = true);
  }

  bool get isPlaying => _myPlayer?.isPlaying ?? false;

  void dispose() {
    _myPlayer?.closePlayer();
    _mPlayerIsInited = false;
    _myPlayer = null;
  }

  Future<void> play(void Function()? whenFinished) async {
    await _myPlayer?.startPlayer(
      fromURI: _mPath,
      codec: _codec,
      whenFinished: () => whenFinished!(),
    );
    whenFinished!();
  }

  Future<void> stopPlayer() async {
    if (_myPlayer != null) {
      await _myPlayer?.stopPlayer();
    }
  }
}
