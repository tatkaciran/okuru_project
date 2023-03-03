import 'package:flutter/material.dart';

import '../models/book_section.dart';
import '../src/src.dart';
import 'src/services/ok_voice_recorder.dart';
import 'src/widgets/take_note/take_note_buttons.dart';

part 'reading_now_view.dart';
part 'src/widgets/notes_view.dart';
part 'src/widgets/info_header.dart';

class ReadingNow extends StatelessWidget {
  final Book? book;
  const ReadingNow({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return _ReadingNowView(book: book);
  }
}
