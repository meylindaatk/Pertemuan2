import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String? imageUrl;
  final double radius;

  const ProfilePhoto({
    super.key,
    this.imageUrl,
    this.radius = 60,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.blueAccent,
      backgroundImage: const AssetImage('assets/images/me.jpg'),
    );
  }
}