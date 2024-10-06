import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,  // Add themeMode here
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.grey[300],  // Light theme background
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.deepPurple),
          displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
          displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple[200]),
          bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black54),
          bodySmall: TextStyle(fontSize: 16, color: Colors.black38),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        fontFamily: 'Courier',  // Change default font to Courier
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.blueGrey[500],  // Dark theme background
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.red),
          displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.redAccent),
          displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red[200]),
          bodyLarge: TextStyle(fontSize: 20, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.white70),
          bodySmall: TextStyle(fontSize: 16, color: Colors.white54),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        fontFamily: 'Courier',
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
        title: const Text("IGME-340: Themes"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                print("ElevatedButton with Icon pressed");
              },
              icon: const Icon(Icons.thumb_up),
              label: const Text('Elevated Button with Icon'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.black, width: 2), // Border customization
              ),
            ),
            TextButton(
              onPressed: () {
                print("TextButton pressed");
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Text Button"),
            ),
            OutlinedButton(
              onPressed: () {
                print("OutlinedButton pressed");
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: const Text("Outlined Button"),
            ),
            Container(
              width: 300,
              height: 200,
              color: Theme.of(context).colorScheme.primary,
              child: Text(
                "Primary Color",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Theme.of(context).colorScheme.secondary,
              child: Text(
                "Secondary Color",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Container(
              width: 350,
              height: 100,
              color: Theme.of(context).colorScheme.error,
              child: Text(
                "Error Color",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Elevated Button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              child: const Text("Elevated Button"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Second Elevated Button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: const Text("Second Elevated Button"),
            ),
          ],
        ),
      ),
    );
  }
}
