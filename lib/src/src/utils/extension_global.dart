import 'package:flutter/material.dart';

extension DeviceSizeExtension on BuildContext {
  Size get deviceSize => MediaQuery.of(this).size;
}
