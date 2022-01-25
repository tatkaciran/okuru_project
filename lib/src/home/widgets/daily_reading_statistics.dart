import 'package:flutter/material.dart';
import 'package:okuru/src/src/utils/utils.dart';

class DailyReadingStatistics extends StatelessWidget {
  const DailyReadingStatistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Center(
        child: SizedBox(
          height: context.deviceSize.height / 5,
          child: const Text('daily reading statistics'),
        ),
      ),
    );
  }
}
