import 'package:flutter/material.dart';

void main() => runApp(const roow());

class roow extends StatelessWidget {
  const roow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row Example - Basic Widget'),
          backgroundColor: const Color.fromARGB(255, 236, 122, 160),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Jarak seimbang antar widget
            crossAxisAlignment: CrossAxisAlignment.center, // Semua widget sejajar di tengah
            children: [
              Container(
                color: const Color.fromARGB(255, 236, 122, 160),
                width: 60,
                height: 60,
                child: const Center(
                  child: Text(
                    'A',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 203, 121, 250),
                width: 60,
                height: 60,
                child: const Center(
                  child: Text(
                    'B',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 236, 122, 160),
                width: 60,
                height: 60,
                child: const Center(
                  child: Text(
                    'C',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}