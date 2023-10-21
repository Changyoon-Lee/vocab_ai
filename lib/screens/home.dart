import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen when tapped.
                Navigator.pushNamed(context, "/write");
              },
              child: const Text('write vocab'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen when tapped.
                Navigator.pushNamed(context, "/list");
              },
              child: const Text('vocab list'),
            ),
          ],
        ),
      ),
    );
  }
}
