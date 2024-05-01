import 'package:flutter/material.dart';
class NearbySawas extends StatefulWidget {
  const NearbySawas({Key? key}) : super(key: key);

  @override
  State<NearbySawas> createState() => _ProductState();
}

class _ProductState extends State<NearbySawas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF8A6C),
          title: const Text('Nearby SAWAS'),

        ),
      ),
    );
  }
}
