import 'package:flutter/material.dart';
import 'package:okuru/okuru/src/src/src.dart';

import 'take_note_botton.dart';
import 'views/take_voice_note_view.dart';

class TakeNoteButtons extends StatelessWidget {
  const TakeNoteButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //
          //! Take note with Voice button
          TakeNoteButton(
            color: Colors.blue,
            icon: Icons.mic,
            child: TakeVoiceNoteView(),
          ),
          //
          //! Take note with Picture button
          TakeNoteButton(color: Colors.red, icon: Icons.image),
          //
          //! Take note with Video button
          TakeNoteButton(
              color: Colors.yellow, icon: Icons.video_camera_front_rounded),
          //
          //! Take note with Text button
          TakeNoteButton(color: Colors.red, icon: Icons.text_fields_rounded),
          //
          //! Take note as Quotation button
          TakeNoteButton(color: Colors.purple, icon: Icons.quora_rounded),
        ]);
  }
}
