

import 'package:flutter/material.dart';

void main() {
  runApp(expns());
}

class expns extends StatelessWidget {
  const expns({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Example'),
        ),
        body: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'List Checklist',
                      style: TextStyle(fontSize: 16), 
                    ),
                  ),
                ),
                Icon(
                  Icons.check,
                  color: const Color.fromARGB(255, 236, 122, 160), // Ikon centang berwarna biru
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
