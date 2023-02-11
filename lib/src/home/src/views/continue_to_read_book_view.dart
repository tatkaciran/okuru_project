import 'package:flutter/material.dart';

import '../../../models/book_section.dart';
import '../../../src/src.dart';

class ContinueToReadTheBookView extends StatelessWidget {
  final Book? book;
  const ContinueToReadTheBookView({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
                  imageUrl: book?.imageUrl,
                ),
                Expanded(
                  child: Column(
                    children: [
                      OKBookTitle(
                        text: book?.title ?? '',
                      ),
                      Text(
                        book?.description ?? '',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const ContinueReadingButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
          const OKReadingProgressBar()
        ],
      ),
    );
  }
}
