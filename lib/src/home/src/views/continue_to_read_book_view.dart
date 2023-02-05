import 'package:flutter/material.dart';

import '../../../src/src.dart';

class ContinueToReadTheBookView extends StatelessWidget {
  const ContinueToReadTheBookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _paddingValue = 10;
    const double _borderRadiusValue = 15;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _paddingValue / 1.3),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.theme.dividerColor,
          borderRadius: BorderRadius.circular(_borderRadiusValue),
        ),
        child: Column(
          children: [
            Row(children: const [
              BookCover(),
              BookDetailsView(children: [
                ContinueReadingButton(),
              ])
            ]),
            const RoundedProgressBar(
              padding: EdgeInsets.all(_paddingValue),
              numberOfPagesRead: 60,
              numberOfPages: 100,
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
