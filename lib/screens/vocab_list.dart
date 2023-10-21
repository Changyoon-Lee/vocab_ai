import 'package:flutter/material.dart';

class VocabListScreen extends StatelessWidget {
  const VocabListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('vocab list'),
      ),
      body: const Center(
        child: Text('vocab list screen'),
      ),
    );
  }
}
