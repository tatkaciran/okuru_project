import 'package:flutter/material.dart';
import 'package:okuru/src/src.dart';

class Okuru extends StatelessWidget {
  const Okuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
