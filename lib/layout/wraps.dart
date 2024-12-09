

import 'package:flutter/material.dart';

class wrps extends StatefulWidget {
  const wrps({super.key});

  @override
  _wrapState createState() => _wrapState();
}

class _wrapState extends State<wrps> {
  // Variabel untuk menyimpan warna latar belakang global
  Color backgroundColor = Colors.white;

  // Daftar warna yang digunakan untuk tombol
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Example'),
      ),
      // Mengubah warna latar belakang Scaffold secara keseluruhan
      backgroundColor: backgroundColor, // Latar belakang seluruh aplikasi
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 20, // Jarak antar item secara horizontal
          runSpacing: 10, // Jarak antar baris secara vertikal
          children: colors.map((color) {
            return InkWell(
              onTap: () {
                setState(() {
                  backgroundColor = color; // Mengubah warna latar belakang
                });
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.grey),
                  color: color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset.zero,
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
