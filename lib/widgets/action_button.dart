
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onAboutPressed;

  const ActionButtons({
    super.key,
    required this.onAboutPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Hubungi mahasiswa'),
                ),
              );
            },
            icon: const Icon(Icons.email),
            label: const Text('Kontak'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: onAboutPressed,
            icon: const Icon(Icons.info_outline),
            label: const Text('Tentang'),
          ),
        ),
      ],
    );
  }
}
