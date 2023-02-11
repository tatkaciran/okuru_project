import 'package:flutter/material.dart';

import '../../../models/book_section.dart';
import '../../../src/shared/methods/books_to_books.dart';
import '../../../src/src.dart';

class RelatedBooks extends StatelessWidget {
  const RelatedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    List<Book> books = getRelaredBooks();

    var padding = const EdgeInsets.only(
      bottom: 5,
      left: 5,
      top: 5,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Related Books'),
            Text('See All'),
          ],
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BookCover(
              padding: padding,
              imageUrl: books[index].imageUrl,
            ),
          ),
        ),
      ],
    );
  }
}
