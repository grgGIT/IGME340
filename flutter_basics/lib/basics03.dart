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
        title: const Text("IGME 340-Basic App"),
      ),
      body: Center(
        child: Transform.rotate(
          angle: 1.57, // Rotate 90 degrees clockwise (positive value)
          child: Column( // Vertical layout that looks horizontal due to rotation
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.25, // Largest container (full width)
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  'Container 1',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.50, // 75% of the width
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  'Container 2',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.75, // 50% of the width
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  'Container 3',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width, // Smallest container (25% width)
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Text(
                  'Container 4',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
