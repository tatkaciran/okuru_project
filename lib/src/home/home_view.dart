import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyView(),
    );
  }
}

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('profile'),
        Text('continue to read the book'),
        Text('unfinished reading books'),
        Text('finished reading books'),
        DailyReadingStatistics(),
      ],
    );
  }
}
