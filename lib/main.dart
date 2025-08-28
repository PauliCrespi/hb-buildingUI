import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.title),
            const SizedBox(width: 8),
            const Icon(CupertinoIcons.heart, color: Colors.red),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
