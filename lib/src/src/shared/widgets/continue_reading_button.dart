import 'package:flutter/material.dart';

class ContinueReadingButton extends StatelessWidget {
  const ContinueReadingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        print('okumaya devam et');
      },
      child: const Text('Okumaya devam et'),
    );
  }
}
