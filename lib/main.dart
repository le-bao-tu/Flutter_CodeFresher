import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 1;

  final _random = new Random();
  final List<Color> colorCollection = <Color>[Colors.red, Colors.blue,Colors.amber,Colors.green];


  void _showCounter() {
    setState(() {
      counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: counter % 2==0 ? colorCollection[_random.nextInt(colorCollection.length)]:null,
      appBar: AppBar(title: const Text("MyHomePage"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$counter',style: const TextStyle(fontSize: 40),),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _showCounter, child: const Text("Click Me"),),
          ],
        ),
      ),
    );
  }
}


