import 'package:flutter/material.dart';

import '../reading_now/reading_now.dart';
import '../book_details/book_details.dart';
import '../models/book_section.dart';

class OKNavigator {
  static void pushBookDetails(BuildContext context, {Book? book}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookDetails(
            book: book,
          ),
        ));
  }

  static void pushReadingNow(BuildContext context, {Book? book}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ReadingNow(
            book: book,
          ),
        ));
  }
}
