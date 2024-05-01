import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _ProductState();
}

class _ProductState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF8A6C),
          title: const Text('About Us'),
        ),
        body: const Center(
          heightFactor: 2,
          widthFactor: 2,
          child: Text(
            "The e-waste acquisit app made under the SAWAS e-waste management system project"
                " for the collection and management of e-waste through an ecosystem. Starting "
                "from individual users, one can issue an e-waste collection request through "
                "which ones produced waste can be efficiently collected managed, and optimally"
                " recycled and a part revenue generated in this process is sent back to the end user.",
            textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Bookman Old Style'),
          ),
        ),
      ),
    );
  }
}
