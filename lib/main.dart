import 'package:autovocab/screens/vocab_list.dart';
import 'package:autovocab/screens/write_vocab.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      routes: {
        '/': (context) => const HomeScreen(),
        '/list': (context) => const VocabListScreen(),
        '/write': (context) => const WriteVocabScreen(),
      },
      initialRoute: '/',
    ),
  );
}
