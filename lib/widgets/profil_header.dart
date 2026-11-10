
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 48,
          child: Icon(Icons.person, size: 48),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text('NIM: $nim'),
      ],
    );
  }
}
