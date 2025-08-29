import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'ProfileCard.dart';

// === Flutter Project === //

// lib/ → Contains the Dart source code.
// lib/main.dart → Entry point. Runs the app.
// main.dart → Entry point, calls runApp() to start the app.
// pubspec.yaml → Defines dependencies and assets. Central config file with packages, fonts, images.
// android/ and ios/ → Native code for each platform.
// .dart_tool/, .idea/, build/ → Auto-generated files.
// lib/ → Cross-platform code, while android/ and ios/ hold platform code.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 183, 58, 156),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Project Paulina Crespi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          // Elon con imagen local
          ProfileCard(
            name: 'Elon Musk',
            description:
                'Leader of Tesla, SpaceX, and X. Focused on tech innovation.',
            imageUrl: 'images/elon.jpg', // <- tu asset local
            //isAsset: true,
          ),

          SizedBox(height: 16),

          // Otras personas con fotos de internet
          ProfileCard(
            name: 'Mark Zuckerberg',
            description:
                'Co-founder of Facebook and its parent company Meta Platforms.',
            imageUrl: 'images/mark.jpg',
          ),

          SizedBox(height: 16),

          ProfileCard(
            name: 'Steve Jobs',
            description: 'Co-founder of Apple Inc.',
            imageUrl: 'images/steve.jpg',
          ),

          SizedBox(height: 16),

          ProfileCard(
            name: 'Marcos Galperin',
            description: 'Co-founder, and CEO of Mercado Libre.',
            imageUrl: 'images/galperin.jpg',
          ),
        ],
      ),
    );
  }
}
