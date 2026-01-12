import 'package:flutter/material.dart';
import 'rectangle.dart';
import 'volume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/rectangle': (context) => Rectangle(),
        '/volume': (context) => Volume(),
      },
    );
  }
}




class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เมนูคำนวณ"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/rectangle'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text("      คำนวณพื้นที่สี่เหลี่ยม     "),
            ),

            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/volume'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("คำนวณปริมาตรทรงกระบอก"),
            ),
          ],
        ),
      ),
    );
  }
}

