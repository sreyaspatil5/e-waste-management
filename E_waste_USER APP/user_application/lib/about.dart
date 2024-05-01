import 'package:flutter/material.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/white.jpg'), fit: BoxFit.cover
    )
    ),
    child: Scaffold(

    appBar: AppBar(
    title: const Text("About Us",style: TextStyle(
    fontSize: 28, fontWeight: FontWeight.bold,
    color: Colors.black54
    ),),
    actions: [
    IconButton(
    padding: EdgeInsets.only(right: 50),
    icon: Icon(Icons.account_circle,size:70),
    onPressed: () {},
    ),
    // add more IconButton
    ],


    toolbarHeight: 100,
    backgroundColor: Color.fromRGBO(27, 168, 133, 1)

    ),
      
      body:
         Container(

     width:400,
    height:600,

    child: Stack(
    children: <Widget>[
    Positioned(
    top: 50,
    left: 40,
    right: 40,
    bottom: 20,
    child: Container(
      padding: EdgeInsets.only(left:25 ,right:25 ),
      child: Center(

        child: Text('The E-Waste Acquisit app made under the '
          'SAWAS e-waste management system project for '
          'the colection and management of e-waste through an ecosystem.'
          ' Starting from individual users, one can issue '
          'an e-waste collection request through which ones produced '
          'waste can be effiiciently collected, managed and '
          'optimally recycled and a part of of revenue generated '
          'in this process is sent back to the end user.',
        style: TextStyle(
          fontSize: 20
        ),)
      ),
    decoration: BoxDecoration(
    borderRadius : BorderRadius.circular(10),
    color : Color.fromRGBO(217, 217, 217, 1),

    )
    )
    ),
    ]
    )
    ),

      )

    );

  }
}
