import '../../../models/book_section.dart';

///In essence, this function takes in a list of [Books] objects and a [parentId], and returns a list of [Book] objects that are related to the parent with the given ID.
List<Book> booksToBooks({
  List<Books> bookss = Books.dummies,
  required String parentId,
}) =>
    bookss
        .where((book) => book.parentId == parentId)
        .expand((book) => book.bookIds)
        .map((bookId) => Book.dummies.singleWhere((book) => book.id == bookId))
        .toList();

List<Book> getContinueToReadBooks({List<Books> bookss = Books.dummies}) =>
    booksToBooks(bookss: bookss, parentId: "ctr");
List<Book> getRelaredBooks({List<Books> bookss = Books.dummies}) =>
    booksToBooks(bookss: bookss, parentId: "rb");
