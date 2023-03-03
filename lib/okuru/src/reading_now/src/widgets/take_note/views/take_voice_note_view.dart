import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../services/ok_voice_recorder.dart';

class TakeVoiceNoteView extends StatefulWidget {
  const TakeVoiceNoteView({
    super.key,
  });

  @override
  State<TakeVoiceNoteView> createState() => _TakeVoiceNoteViewState();
}

class _TakeVoiceNoteViewState extends State<TakeVoiceNoteView> {
  OKVoiceRecorder? _voiceRecorder;
  OKRecordedVoicePlayer? _voicePlayer;

  @override
  void initState() {
    super.initState();

    getTemporaryDirectory().then(
      (dir) {
        print("getTemporaryDirectory ${dir.path}");
      },
    );

    _voiceRecorder = OKVoiceRecorder();
    _voicePlayer = OKRecordedVoicePlayer();

    Permission.microphone.request().then(
      (status) {
        if (status != PermissionStatus.granted) {
          throw "Microphone permission not granted";
        }
      },
    );
    _voiceRecorder?.init();
    _voicePlayer?.init();
  }

  @override
  void dispose() {
    _voicePlayer?.dispose();
    _voiceRecorder?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), fixedSize: const Size.square(100)),
            child: const Icon(
              Icons.mic_rounded,
              size: 50,
            ),
            onPressed: () {
              if (_voiceRecorder!.isRecording) {
                _voiceRecorder?.stopRecorder();
              } else {
                _voiceRecorder?.record();
              }

              setState(() {});
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), fixedSize: const Size.square(100)),
            child: Icon(
              !(_voicePlayer!.isPlaying) ? Icons.play_arrow : Icons.square,
              size: 50,
            ),
            onPressed: () {
              if (!_voiceRecorder!.isRecording && !_voicePlayer!.isPlaying) {
                _voicePlayer?.play(
                  () {
                    setState(() {});
                  },
                );
              } else {
                _voicePlayer?.stopPlayer();
              }

              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
