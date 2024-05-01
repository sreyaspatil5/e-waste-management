import 'package:flutter/material.dart';

class MyContact extends StatefulWidget {
  const MyContact({Key? key}) : super(key: key);

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
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
              title: const Text("Contact Us",style: TextStyle(
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

                                child: Text('Customer Care No.\n1800-123-222\n\nMail Us:\nsawas@ewaste.com',
                                  style: TextStyle(
                                      fontSize: 28
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
