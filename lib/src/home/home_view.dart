import 'package:flutter/material.dart';
import 'src/src.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ProfileButtonView(),
          ContinueToReadTheBookView(),
          UnfinishedBooks(),
          FinishedBooks(),
          // DailyReadingStatistics(),
        ],
      ),
    );
  }
}
