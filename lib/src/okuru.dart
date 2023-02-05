import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'src/src.dart';

class Okuru extends StatelessWidget {
  const Okuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemePreset.flexLight,
      darkTheme: ThemePreset.flexDark,
      themeMode: ThemeMode.dark,
      home: const Home(),
    );
  }
}
