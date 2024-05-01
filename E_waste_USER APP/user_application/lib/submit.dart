import 'package:e_waste/page1.dart';
import 'package:flutter/material.dart';

class MySubmit extends StatefulWidget {
  const MySubmit({Key? key}) : super(key: key);

  @override
  State<MySubmit> createState() => _MySubmitState();
}

class _MySubmitState extends State<MySubmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.4, left: 50,right: 40
            ),
            child:
            TextButton(
            onPressed:() {
    Navigator.push
    (context,
    new MaterialPageRoute(
    builder: (context)=> new MyPage1(),
    ));
    },
    child:
    Text('Thank You. Request Submitted \n\nClick Here To Go Back ',
            style: TextStyle(
            color: Colors.white, fontSize: 35,
            ),
            ),

          )
          )
        ],
      ),

    );
  }
}
