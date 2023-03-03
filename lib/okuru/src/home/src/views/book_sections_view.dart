import 'package:flutter/material.dart';

import '../../../book/book_view.dart';
import '../../../models/book_section.dart';
import '../../../src/shared/methods/books_to_books.dart';

class BookSectionsView extends StatelessWidget {
  const BookSectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookSection> bookSections = BookSection.dummies;

    return PageView.builder(
      controller: PageController(viewportFraction: 0.9),
      physics: const BouncingScrollPhysics(),
      itemCount: bookSections.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var bookSection = bookSections[index];

        return BookSectionView(bookSection: bookSection);
      },
    );
  }
}

class BookSectionView extends StatelessWidget {
  final BookSection bookSection;
  const BookSectionView({
    super.key,
    required this.bookSection,
  });

  @override
  Widget build(BuildContext context) {
    /// [books] retrieves a list of `Book` objects that belong to the `bookSection` by filtering the `Books.dummies` list based on `bookSectionId` and mapping each `bookId` to its corresponding `Book` object.
    // List<Book> books = Books.dummies
    //     .where((book) => book.parentId == bookSection.id)
    //     .expand((book) => book.bookIds)
    //     .map((bookId) => Book.dummies.singleWhere((book) => book.id == bookId))
    //     .toList();

    List<Book> books = booksToBooks(parentId: bookSection.id);

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    bookSection.label,
                    style: Theme.of(context).textTheme.headlineMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: books.length,
                itemBuilder: (context, index) {
                  var book = books[index];
                  return BookView.inSectionTile(book);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
