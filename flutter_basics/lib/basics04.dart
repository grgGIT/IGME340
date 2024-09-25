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
        title: const Text("8 Containers Scrollable Layout"),
      ),
      body: SingleChildScrollView( // Allows scrolling when content overflows
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width, // Full width of the screen
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text(
                'Container 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Container 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                'Container 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text(
                'Container 4',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text(
                'Container 5',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.purple,
              alignment: Alignment.center,
              child: const Text(
                'Container 6',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.teal,
              alignment: Alignment.center,
              child: const Text(
                'Container 7',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.pink,
              alignment: Alignment.center,
              child: const Text(
                'Container 8',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
