import 'package:flutter/material.dart';
import '../widgets/profil_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_button.dart';
import '../widgets/sosial_media_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Latihan 3: Expanded untuk area konten
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Latihan 4: identitas dipisahkan
                  const ProfileHeader(
                    name: 'Meylinda Atika Putri D',
                    nim: '25.11.6404',
                  ),
                  const SizedBox(height: 24),

                  const ProfileInfo(
                    programStudi: 'S1 Informatika',
                    email: 'm.atika@students.amikom.ac.id',
                    lokasi: 'Yogyakarta, Indonesia',
                  ),
                  const SizedBox(height: 20),

                  // Latihan 1: tombol media sosial
                  const SocialMediaRow(),
                ],
              ),
            ),
          ),

          // Latihan 3: Flexible untuk area tombol
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ActionButtons(
                onAboutPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
