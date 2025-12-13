import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'rectangle.dart';
import 'volume.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/rectangle': (context) => Rectangle(),
        '/volume': (context) => Volume(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/rectangle'),
          child: Text("คำนวนพื้นที่สี่เหลี่ยม"),
          style: TextButton.styleFrom(

            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }

  const SizedBox(hight:20),

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/volume'),
          child: Text("หาปริมาตร"),
          style: TextButton.styleFrom(

            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
