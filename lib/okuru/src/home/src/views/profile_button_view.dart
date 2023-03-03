// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:okuru/okuru/src/src/src.dart';

class ProfileButtonView extends StatelessWidget {
  const ProfileButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: context.deviceSize.width - 20,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          overlayColor: MaterialStateProperty.all(Colors.amber),
          onTap: () => print('object'),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _UserAvatar(),
                Center(child: Text('''
Osman Yapıcıoğlu
Okunan Kitap: 78
Hazirda Okunan: 16
Biten Kitap: 62              ''')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red.withOpacity(0.2),
      ),
      child: const SizedBox(
        height: 100,
        width: 100,
      ),
    );
  }
}
