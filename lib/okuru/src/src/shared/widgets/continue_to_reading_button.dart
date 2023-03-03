import 'package:flutter/material.dart';

class ContinueToReadingButton extends StatelessWidget {
  final void Function()? onPressed;
  const ContinueToReadingButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: const Text(
        "Continue To Read",
        textScaleFactor: 1,
      ),
    );
  }
}
