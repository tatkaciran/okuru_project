import 'package:flutter/material.dart';

import '../../../models/book_section.dart';
import '../../../src/shared/methods/books_to_books.dart';
import 'views.dart';

class ContinueToReadTheBooksView extends StatelessWidget {
  const ContinueToReadTheBooksView({super.key});
  @override
  Widget build(BuildContext context) {
    List<Book> books = getContinueToReadBooks();
    return PageView.builder(
      controller: PageController(viewportFraction: 0.9),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) {
        var book = books[index];

        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.94,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 8),
            child: ContinueToReadTheBookView(book: book),
          ),
        );
      },
    );
  }
}
