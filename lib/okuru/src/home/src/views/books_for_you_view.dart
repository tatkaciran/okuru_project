import 'package:flutter/material.dart';

import '../../../book/book_view.dart';
import '../../../models/book_section.dart';
import '../../../src/shared/methods/books_to_books.dart';

class BooksForYou extends StatelessWidget {
  const BooksForYou({super.key});

  @override
  Widget build(BuildContext context) {
    List<Book> books = getRelaredBooks();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Books For You'),
            Text('See All'),
          ],
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BookView.onlyCover(
              books[index],
            ),
          ),
        ),
      ],
    );
  }
}
