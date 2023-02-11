import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    this.imageUrl,
    this.padding = EdgeInsets.zero,
    super.key,
  });
  final EdgeInsets padding;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AspectRatio(
        aspectRatio: 5 / 8,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 26, 26, 26),
            borderRadius: BorderRadius.circular(5),
            image: imageUrl != null
                ? DecorationImage(
                    image: NetworkImage(imageUrl!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
