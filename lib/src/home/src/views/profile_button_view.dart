import 'package:flutter/material.dart';
import 'package:okuru/src/src/utils/extension_global.dart';

class ProfileButtonView extends StatelessWidget {
  const ProfileButtonView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: context.deviceSize.width - 20,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          overlayColor: MaterialStateProperty.all(Colors.amber),
          onTap: () => print('object'),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                UserAvatar(),
                Center(child: Text('Osman Yapıcıoğlu')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
      child: SizedBox(
        height: 100,
        width: 100,
      ),
    );
  }
}
