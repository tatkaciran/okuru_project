import 'package:flutter/material.dart';

import '../models/book_section.dart';
import '../src/src.dart';

part './src/views/in_continue_to_read_card.dart';
part './src/views/in_section_tile.dart';
part './src/views/only_cover.dart';

class BookView extends StatelessWidget {
  final Book? book;
  const BookView({super.key, this.book});

  factory BookView.inContinueToReadCard(Book book) => _InContinueToReadCard(
        book: book,
      );
  factory BookView.inSectionTile(Book book) => _InSectionTile(
        book: book,
      );
  factory BookView.onlyCover(Book book) => _OnlyCover(
        book: book,
      );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
