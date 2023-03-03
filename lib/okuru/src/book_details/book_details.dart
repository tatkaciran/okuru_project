import 'package:flutter/material.dart';

import '../models/book_section.dart';
import '../src/src.dart';

part 'book_details_view.dart';

class BookDetails extends StatelessWidget {
  final Book? book;
  const BookDetails({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return _BookDetailsView(
      book: book,
    );
  }
}
