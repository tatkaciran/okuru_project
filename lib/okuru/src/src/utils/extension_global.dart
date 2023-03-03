import 'package:flutter/material.dart';

extension DeviceSizeExtension on BuildContext {
  Size get deviceSize => MediaQuery.of(this).size;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}
