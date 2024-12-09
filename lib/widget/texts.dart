import 'package:flutter/material.dart';

class txts extends StatelessWidget {
  const txts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: const [
          Text(
            'TRY AGAIN',
            style: TextStyle(
              color: Color.fromARGB(255, 252, 97, 169),
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}