import 'package:flutter/material.dart';
class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  State<HelpAndSupport> createState() => _ProductState();
}

class _ProductState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF8A6C),
          title: const Text('Help And Support'+'🎧'),

        ),
      ),
    );
  }
}
