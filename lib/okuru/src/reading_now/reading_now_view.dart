// ignore_for_file: prefer_const_constructors

part of 'reading_now.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(shape: CircleBorder()),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.play_arrow_rounded),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Icon(Icons.remove),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Page"),
              ),
              Icon(Icons.add),
            ],
          ),
        )
      ],
    );
  }
}

class _ReadingNowView extends ReadingNow {
  const _ReadingNowView({super.book});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.4,
                  child: BookCover(
                    imageUrl: book?.imageUrl,
                  ),
                ),
                Column(
                  children: [
                    const Expanded(
                      flex: 16,
                      child: _NotesView(),
                    ),
                    Expanded(
                      flex: 2,
                      child: TakeNoteButtons(),
                    ),
                    _BookTitle(book: book),
                    Expanded(
                      flex: 1,
                      child: OKReadingProgressBar(
                        numberOfPages: (book?.numberOfPages ?? 0).toDouble(),
                      ),
                    ),
                    Row(
                      children: [
                        const Text("Timer"),
                        _PageCounter(book: book),
                      ],
                    ),
                    Expanded(
                      flex: 4,
                      child: BottomSection(),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: const _SettingsButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
