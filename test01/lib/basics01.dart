import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IGME-340 Basic App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,  // Push the Column to the bottom
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: const Text(
              'Container 1',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text(
              'Container 2',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'Container 3',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text(
              'Container 4',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
