import 'package:flutter/material.dart';
class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _ProductState();
}

class _ProductState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF8A6C),
          title: const Text('Wallet'+ '👝'),

        ),
      ),
    );
  }
}
