
import 'package:flutter/material.dart';

void main() {
  runApp(const colm());
}

class colm extends StatelessWidget {
  const colm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DRINK'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Boba MilkTea',
                style: TextStyle(
                  color: const Color.fromARGB(255, 236, 122, 160),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rp 15.000',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
