import 'package:flutter/material.dart';
import 'package:okuru/okuru/src/src/src.dart';

class TakeNoteButton extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final Widget? child;
  const TakeNoteButton({
    super.key,
    this.color,
    this.icon = Icons.construction,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        foregroundColor: color,
        backgroundColor: Colors.black.withOpacity(0.3),
      ),
      onPressed: () async {
        showDialog(
          context: context,
          builder: (context) {
            var h = context.deviceSize.height * 0.7;
            var w = context.deviceSize.width * 0.8;

            return Padding(
              padding: EdgeInsets.only(bottom: h * 0.2),
              child: Dialog(
                insetPadding: EdgeInsets.zero,
                backgroundColor: Colors.black,
                child: SizedBox(
                  height: h,
                  width: w,
                  child: child,
                ),
              ),
            );
          },
        );
      },
      child: Icon(icon),
    );
  }
}
