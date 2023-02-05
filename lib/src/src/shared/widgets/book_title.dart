import 'package:flutter/material.dart';
import 'package:okuru/src/src/src.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Book Title',
      style: context.theme.textTheme.headline6,
    );
  }
}
