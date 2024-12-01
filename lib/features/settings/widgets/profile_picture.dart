import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 70,
      backgroundImage: AssetImage(
        'assets/images/5599e2f071ef55d859463a3be2cb178e.jpg',
      ),
    );
  }
}
