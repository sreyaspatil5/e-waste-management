import 'package:flutter/material.dart';

class MyHistory extends StatefulWidget {
  const MyHistory({Key? key}) : super(key: key);

  @override
  State<MyHistory> createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
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
              title: const Text("History",style: TextStyle(
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
                        top: 150,
                        left: 40,
                        right: 40,
                        bottom: 120,
                        child: Container(
                            padding: EdgeInsets.only(left:25 ,right:25 ),
                            child: Center(

                                child: Text('REQUEST 1:\n   Request Id: 24551\n'
                                    '   Track Id:33561\n   Sent On:25/08/2022\n'
                                    '   Credits Recived: 10\n   Recycle Percentage: 45%',
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
