import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showMessage(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platform'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => _showMessage(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => _showMessage(context, 'LinkedIn'),
          icon: const Icon(Icons.work),
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => _showMessage(context, 'GitHub'),
          icon: const Icon(Icons.code),
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}
