part of "book_details.dart";

class _BookDetailsView extends BookDetails {
  const _BookDetailsView({super.book});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
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
                            onPressed: () =>
                                OKNavigator.pushReadingNow(context, book: book),
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
      ),
    );
  }
}
