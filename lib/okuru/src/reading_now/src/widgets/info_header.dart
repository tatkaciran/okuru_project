part of '../../reading_now.dart';

class _InfoHeader extends StatelessWidget {
  const _InfoHeader({
    required this.book,
  });

  final Book? book;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PageCounter extends StatelessWidget {
  const _PageCounter({
    required this.book,
  });

  final Book? book;

  @override
  Widget build(BuildContext context) {
    return Text("${book?.numberOfPages}");
  }
}

// TODO: ayarlar kitap sayfalarini duzeltmek gecen sure gibi seyleri editlemek icin kullanilir.
class _SettingsButton extends StatelessWidget {
  const _SettingsButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {},
    );
  }
}

class _BookTitle extends StatelessWidget {
  const _BookTitle({
    super.key,
    required this.book,
  });

  final Book? book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 20),
        child: OKBookTitle(
          text: book?.title,
          titleType: BookTitleType.inReadingNow,
        ),
      ),
    );
  }
}
