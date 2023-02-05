import 'package:flutter/material.dart';

import '../../../src/src.dart';

class FinishedBooks extends StatelessWidget {
  const FinishedBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _bookCoverWidthValue = 6;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Bitmiş kitaplar'),
          SizedBox(
            height: context.deviceSize.height / 8,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                BookCover(
                  widthValue: _bookCoverWidthValue,
                ),
                BookCover(
                  widthValue: _bookCoverWidthValue,
                ),
                BookCover(
                  widthValue: _bookCoverWidthValue,
                ),
                BookCover(
                  widthValue: _bookCoverWidthValue,
                ),
                BookCover(
                  widthValue: _bookCoverWidthValue,
                ),
                BookCover(
                  widthValue: _bookCoverWidthValue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
