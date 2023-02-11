import 'package:flutter/material.dart';
import 'package:okuru/src/src/src.dart';

class OKBookTitle extends StatelessWidget {
  final String text;
  const OKBookTitle({this.text = "Book Title 2 Come Again", super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.titleLarge,
      overflow: TextOverflow.ellipsis,
    );
  }
}
