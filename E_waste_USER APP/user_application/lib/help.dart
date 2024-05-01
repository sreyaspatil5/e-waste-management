import 'package:flutter/material.dart';

class MyHelp extends StatefulWidget {
  const MyHelp({Key? key}) : super(key: key);

  @override
  State<MyHelp> createState() => _MyHelpState();
}

class _MyHelpState extends State<MyHelp> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/white.jpg'), fit: BoxFit.cover
              )
          ),
      child: Scaffold(

        appBar: AppBar(
          title: const Text("Help & Support",style: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold,
            color: Colors.black54
          ),),
            actions: [
              IconButton(
                padding: EdgeInsets.only(right: 70),
                icon: Icon(Icons.account_circle,size:70),
                onPressed: () {},
              ),
              // add more IconButton
            ],


          toolbarHeight: 100,
            backgroundColor: Color.fromRGBO(27, 168, 133, 1)

        ),

        backgroundColor: Colors.transparent,

        body: Stack(

            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 295,
                      height: 577,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 40,
                                left: 165,
                                child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/complain.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                )
                            ),
                            Positioned(
                                top: 120,
                                left: 100,
                                child: Container(
                                    width: 187,
                                    height: 48,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 187,
                                                  height: 48,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10),
                                                      bottomLeft: Radius.circular(10),
                                                      bottomRight: Radius.circular(10),
                                                    ),
                                                    color : Color.fromRGBO(217, 217, 217, 1),
                                                  )
                                              )
                                          ),Positioned(
                                              top: 15,
                                              left: 43,
                                              child: Text('Add a Complaint', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 0.6899999976158142),
                                                  fontSize: 14,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),
                            Positioned(
                                top: 140,
                                left: 155,
                                child: Container(
                                    width: 70,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/debug.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                )
                            ),

                            Positioned(
                                top: 238,
                                left: 100,
                                child: Container(
                                    width: 187,
                                    height: 48,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 187,
                                                  height: 48,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10),
                                                      bottomLeft: Radius.circular(10),
                                                      bottomRight: Radius.circular(10),
                                                    ),
                                                    color : Color.fromRGBO(217, 217, 217, 1),
                                                  )
                                              )
                                          ),Positioned(
                                              top: 15,
                                              left: 49,
                                              child: Text('Report a Bug', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 0.6899999976158142),
                                                  fontSize: 14,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),
                            Positioned(
                                top: 295,
                                left: 155,
                                child: Container(
                                    width: 70,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/customer.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                )
                            ),
                            Positioned(
                                top: 385,
                                left: 100,
                                child: Container(
                                    width: 187,
                                    height: 48,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 187,
                                                  height: 48,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10),
                                                      bottomLeft: Radius.circular(10),
                                                      bottomRight: Radius.circular(10),
                                                    ),
                                                    color : Color.fromRGBO(217, 217, 217, 1),
                                                  )
                                              )
                                          ),
                                          Positioned(
                                              top: 15,
                                              left: 39,
                                              child: Text('Customer Care', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 0.6899999976158142),

                                                  fontSize: 14,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),
                            Positioned(
                                top: 450,
                                left: 160,
                                child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/feedback.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                )
                            ),
                            Positioned(
                                top: 529,
                                left: 100,
                                child: Container(
                                    width: 187.18215942382812,
                                    height: 48,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              child: Container(
                                                  width: 187,
                                                  height: 48,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10),
                                                      bottomLeft: Radius.circular(10),
                                                      bottomRight: Radius.circular(10),
                                                    ),
                                                    color : Color.fromRGBO(217, 217, 217, 1),
                                                  )
                                              )

                                          ),

                                          Positioned(
                                              top: 15,
                                              left: 59,
                                              child: Text('Feedback', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 0.6899999976158142),
                                                  fontSize: 14,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),


                          ]
                      )
                  )
              ),
            ]
        )
      )
      );





  }
}
