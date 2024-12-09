import 'package:flutter/material.dart';

void main() => runApp(const tbbar());

class tbbar extends StatelessWidget {
  const tbbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TABBAR'),
           titleTextStyle: TextStyle(
            color: const Color.fromARGB(255, 250, 101, 151), // Mengubah warna judul teks
            fontSize: 24,         // Mengubah ukuran font
            fontWeight: FontWeight.bold, // Mengubah gaya font
          ),
          backgroundColor: Color.fromARGB(255, 255, 150, 203), // Warna latar belakang AppBar
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 218, 124, 168), // Warna indikator bawah tab aktif
            labelColor: const Color.fromARGB(255, 250, 101, 151), // Warna teks tab yang aktif
            unselectedLabelColor: Color.fromARGB(255, 207, 40, 118), // Warna teks tab yang tidak aktif
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Search Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Profile Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}