import 'package:flutter/material.dart';
import 'package:okuru/src/src/utils/extension_global.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    Key? key,
    this.bookCoverUrl =
        'https://m.media-amazon.com/images/I/41-BGQaEFbL._AC_SY1000_.jpg',
    this.paddingValue = 10,
    this.borderRadiusValue = 15,
    this.widthValue = 3,
  }) : super(key: key);

  final double paddingValue;
  final double borderRadiusValue;
  final int widthValue;
  final String bookCoverUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingValue, left: paddingValue),
      child: SizedBox(
        height: context.deviceSize.height / 4,
        width: context.deviceSize.width / widthValue,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).dividerColor,
            borderRadius: BorderRadius.circular(borderRadiusValue),
            image: DecorationImage(
              image: NetworkImage(bookCoverUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
