
import 'package:flutter/material.dart';

class szb extends StatelessWidget {
  const szb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Memberikan padding pada body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Size",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              "Height 120 cm",
              style: TextStyle(
                fontSize: 16.0,
                color: const Color.fromARGB(255, 236, 122, 160),
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              "Width 80 cm",
              style: TextStyle(
                fontSize: 16.0,
                color: const Color.fromARGB(255, 236, 122, 160),
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
