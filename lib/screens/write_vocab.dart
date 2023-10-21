import 'package:flutter/material.dart';

class WriteVocabScreen extends StatelessWidget {
  const WriteVocabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('write vocab'),
      ),
      body: const Center(
        child: Canvas(),
      ),
    );
  }
}

class Canvas extends StatelessWidget {
  const Canvas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('write vocab screen');
  }
}
