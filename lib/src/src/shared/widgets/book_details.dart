import 'package:flutter/material.dart';
import 'package:okuru/src/src/src.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    required this.children,
    Key? key,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SizedBox(
          height: context.deviceSize.height / 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BookTitle(),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                    'continue to read the book asdasd sadas asdas dasdas asdasd'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: children,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
