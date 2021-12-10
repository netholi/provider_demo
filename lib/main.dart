import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider demo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Hello'),
            const SizedBox(
              width: double.infinity,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Update'),
            )
          ],
        ),
      ),
    );
  }
}
