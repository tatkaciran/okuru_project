import 'package:flutter/material.dart';

class ContinueReadingButton extends StatelessWidget {
  const ContinueReadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      onPressed: () {},
      child: const Text(
        "📖",
        textScaleFactor: 2,
      ),
    );
  }
}
