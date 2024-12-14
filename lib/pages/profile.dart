import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto profil dari URL
            Container(
              width: 120, // Lebar foto
              height: 120, // Tinggi foto
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://cdn.7tv.app/emote/01FKKW7C1G0008TM5NY9QEFEDW/4x.webp',
                  ), // URL gambar profil
                  fit: BoxFit.cover, // Menyesuaikan ukuran gambar
                ),
                borderRadius:
                    BorderRadius.circular(10), // Radius untuk sudut kotak
                border: Border.all(color: Colors.grey, width: 2), // Border foto
              ),
            ),
            const SizedBox(height: 20), // Jarak antar elemen
            // Nama
            const Text(
              'Anarki', // Ganti dengan nama Anda
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // NPM
            const Text(
              'NPM: 2210010252', // Ganti dengan NPM Anda
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            // Kelas
            const Text(
              'Kelas: 5N', // Ganti dengan kelas Anda
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}