part of '../../book_view.dart';

class _OnlyCover extends BookView {
  const _OnlyCover({super.book});

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.only(
      bottom: 5,
      left: 5,
      top: 5,
    );
    return BookCover(
      padding: padding,
      imageUrl: book?.imageUrl,
    );
  }
}
