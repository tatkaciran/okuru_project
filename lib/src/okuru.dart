import 'package:flutter/material.dart';

import 'home/home.dart';
import 'src/src.dart';

class Okuru extends StatelessWidget {
  const Okuru({super.key});

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
