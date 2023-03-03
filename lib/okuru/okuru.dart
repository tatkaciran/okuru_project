import 'package:flutter/material.dart';
import 'package:okuru/okuru/src/home/home.dart';

import 'src/reading_now/reading_now.dart';
import 'src/models/book_section.dart';
import 'src/src/src.dart';

class Okuru extends StatelessWidget {
  const Okuru({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemePreset.flexLight,
      darkTheme: ThemePreset.flexDark,
      themeMode: ThemeMode.dark,
      home: ReadingNow(
        book: Book.dummies[9],
      ),
      //home: const Home(),
    );
  }
}
