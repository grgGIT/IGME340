import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false; // Toggle for theme

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.grey[300],
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
          displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.black),
          displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
          bodySmall: TextStyle(fontSize: 14, color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple, // Use theme primary color
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
        fontFamily: 'Courier',
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.blueGrey[500],
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.white),
          displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
          bodySmall: TextStyle(fontSize: 14, color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Dark theme button color
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
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
        actions: [
          Switch(
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: (value) {
              setState(() {
                Theme.of(context).brightness == Brightness.dark
                    ? ThemeMode.light
                    : ThemeMode.dark;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Theme.of(context).colorScheme.primary, // Theme-based color
              alignment: Alignment.center,
              child: Text(
                "I am Primary",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Theme.of(context).colorScheme.secondary, // Theme-based color
              alignment: Alignment.center,
              child: Text(
                "I am Secondary",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Theme.of(context).colorScheme.error, // Theme-based color
              alignment: Alignment.center,
              child: Text(
                "I am Error",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated Button Pressed');
              },
              child: const Text('Elevated Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Elevated Button with Icon Pressed');
              },
              icon: const Icon(Icons.add),
              label: const Text("Icon Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary, // Custom color
                side: const BorderSide(color: Colors.black, width: 2),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Text Button Pressed');
              },
              child: const Text("Text Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined Button Pressed');
              },
              child: const Text("Outlined Button"),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
