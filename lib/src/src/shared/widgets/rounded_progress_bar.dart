import 'package:flutter/material.dart';

class OKReadingProgressBar extends StatelessWidget {
  const OKReadingProgressBar({
    super.key,
    this.numberOfPages = 300,
    this.numberOfPagesRead = 90,
    this.height = 10,
    this.borderRadius = const BorderRadius.all(Radius.circular(30)),
    this.padding = EdgeInsets.zero,
  });

  final double numberOfPages;
  final double numberOfPagesRead;
  final double height;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    late final double width;
    late final double widthProgress;
    return Padding(
      padding: padding,
      child: LayoutBuilder(
        builder: (context, constraint) {
          width = constraint.maxWidth;
          widthProgress = width * numberOfPagesRead / numberOfPages;
          return ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Column(
              children: <Widget>[
                ColoredBox(
                  color: Colors.grey,
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: AnimatedSize(
                        alignment: AlignmentDirectional.centerStart,
                        duration: const Duration(milliseconds: 500),
                        child: SizedBox(
                          height: height,
                          width: widthProgress,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
