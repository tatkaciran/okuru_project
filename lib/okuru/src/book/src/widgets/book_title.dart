import 'package:flutter/material.dart';
import 'package:okuru/okuru/src/src/src.dart';

enum BookTitleType {
  inReadingNow,
  defaults,
}

class OKBookTitle extends StatelessWidget {
  final String? text;
  final BookTitleType titleType;
  const OKBookTitle(
      {this.text, super.key, this.titleType = BookTitleType.defaults});

  @override
  Widget build(BuildContext context) {
    TextStyle? setTextStyle(BookTitleType type) {
      switch (type) {
        case BookTitleType.inReadingNow:
        case BookTitleType.defaults:
          return context.theme.textTheme.bodyLarge;
      }
    }

    return Text(
      text ?? "Book Title 2 Come Again",
      style: setTextStyle(titleType),
      overflow: TextOverflow.ellipsis,
    );
  }
}
