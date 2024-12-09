import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  const btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Tambahkan logika untuk button
          },
          child: const Text('Click Here'),
        ),
      ),
    );
  }
}