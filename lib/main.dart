
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Acak Dadu',
            ),
          ),
          backgroundColor: Colors.red[900],
        ),
        body: const AcakDadu(),
      ),
    );
  }
}

class AcakDadu extends StatefulWidget {
  const AcakDadu({Key? key}) : super(key: key);

  @override
  _AcakDaduState createState() => _AcakDaduState();
}

class _AcakDaduState extends State<AcakDadu> {
  int daduKiri = 1;
  int daduKanan = 2;

  void acakAngkaDadu() {
    setState(() {
      daduKiri = Random().nextInt(6) + 1; // Nilai dari 1 hingga 6
      daduKanan = Random().nextInt(6) + 1; // Nilai dari 1 hingga 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/dice$daduKiri.png',
                ),
                onTap: acakAngkaDadu,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/dice$daduKanan.png',
                ),
                onTap: acakAngkaDadu,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
