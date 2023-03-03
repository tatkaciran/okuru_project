part of '../../book_view.dart';

class _InSectionTile extends BookView {
  const _InSectionTile({super.book});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.1,
      width: size.width * 0.94,
      child: Row(
        children: [
          BookCover(
            imageUrl: book?.imageUrl!,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: OKBookTitle(
                  text: book?.title ?? "",
                )),
                OKReadingProgressBar(
                  numberOfPages: (book?.numberOfPages ?? 0).toDouble(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
