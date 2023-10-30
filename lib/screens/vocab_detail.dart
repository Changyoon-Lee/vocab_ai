import 'package:flutter/material.dart';

class VocabDetail extends StatelessWidget {
  const VocabDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data"),
        ),
        body: Container(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
        ));
  }
}
