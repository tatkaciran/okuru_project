part of 'home.dart';

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2, child: ProfileButtonView()),
          Expanded(flex: 3, child: ContinueToReadTheBooksView()),
          Expanded(flex: 6, child: BookSectionsView()),
          Expanded(flex: 2, child: BooksForYou()),
          // DailyReadingStatistics(),
        ],
      ),
    );
  }
}

//  height: context.deviceSize.height * 0.15,