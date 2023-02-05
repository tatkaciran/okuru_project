import 'package:flutter/material.dart';
import '../../../src/src.dart';

class UnfinishedBooks extends StatelessWidget {
  const UnfinishedBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('unfinished reading books'),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                UnfinishedItem(),
                UnfinishedItem(),
                UnfinishedItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UnfinishedItem extends StatelessWidget {
  const UnfinishedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _bookCoverWidthValue = 6;
    return Row(
      children: [
        SizedBox(
          height: context.deviceSize.height / 8,
          child: const BookCover(
            widthValue: _bookCoverWidthValue,
          ),
        ),
        Column(
          children: [
            const BookTitle(),
            SizedBox(
              height: 100,
              width: 200,
              child: RoundedProgressBar(
                numberOfPages: 500,
                numberOfPagesRead: 375,
                borderRadius: BorderRadius.circular(30),
                height: 20,
                padding: const EdgeInsets.all(40),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
