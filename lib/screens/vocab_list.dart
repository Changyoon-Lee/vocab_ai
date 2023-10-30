import 'package:flutter/material.dart';

class VocabListScreen extends StatelessWidget {
  const VocabListScreen({super.key});

  Widget _row(int index) {
    return Container(
      color: Colors.red.shade100,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SizedBox(
                width: 120,
                child: Text(
                  "hello",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "안녕",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Text("1. hi hello im fine thank you\n2. hello my name is balbal"),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('vocab list'),
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/detail");
                },
                child: _row(index))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/write");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
