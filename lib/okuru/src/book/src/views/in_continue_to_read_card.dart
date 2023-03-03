part of '../../book_view.dart';

class _InContinueToReadCard extends BookView {
  const _InContinueToReadCard({super.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => OKNavigator.pushBookDetails(
        context,
        book: book,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.theme.dividerColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  BookCover(
                    key: const ValueKey('BookCover'),
                    imageUrl: book?.imageUrl,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        OKBookTitle(
                          text: book?.title ?? '',
                        ),
                        Flexible(
                          child: Text(
                            book?.description ?? '',
                            overflow: TextOverflow.fade,
                            style: context.theme.textTheme.bodyMedium,
                          ),
                        ),
                        ContinueToReadingButton(
                          onPressed: () => OKNavigator.pushReadingNow(
                            context,
                            book: book,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            OKReadingProgressBar(
              numberOfPages: (book?.numberOfPages ?? 0).toDouble(),
            )
          ],
        ),
      ),
    );
  }
}
