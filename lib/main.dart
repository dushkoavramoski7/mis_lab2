import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  void buttonClick() {
    print('asd1');
    print('asd1');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World",
        home: Scaffold(
          appBar: AppBar(title: const Text('Hello World')),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: buttonClick, child: const Text('Button')),
              ElevatedButton(
                  onPressed: buttonClick, child: const Text('Button')),
              ElevatedButton(
                  onPressed: buttonClick, child: const Text('Button')),
            ],
          ),
        ));
  }
}
