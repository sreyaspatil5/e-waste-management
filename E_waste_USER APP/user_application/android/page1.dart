import 'package:flutter/material.dart';

class MyPage1 extends StatefulWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  State<MyPage1> createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
  int currentIndex = 0;
  final screens = [
    Center(child: Text('Wallet', style: TextStyle(fontSize: 60))),
    Center(child: Text('History', style: TextStyle(fontSize: 60))),
    Center(child: Text('Add New', style: TextStyle(fontSize: 60))),
    Center(child: Text('Info', style: TextStyle(fontSize: 60))),
    Center(child: Text('About Us', style: TextStyle(fontSize: 60))),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back1.jpg'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 50),
              child: Icon(
                Icons.account_circle,
                size: 70,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text('Issue E-Waste\nCollection Request', style: TextStyle(
                  color: Colors.white, fontSize: 28),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.3, right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          hintText: 'E-Waste Type(Tv,Mobile,Keyboard,etc)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          hintText: 'Select Working Condition',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          hintText: 'How long it is Used (In Months)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          hintText: 'Parent Company',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade400,
                          filled: true,
                          hintText: 'Additional Remarks',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          iconSize: 40,
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Wallet',
              backgroundColor: Color.fromRGBO(51, 204, 166, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
              backgroundColor: Color.fromRGBO(51, 204, 166, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outlined),
              label: 'Add New',
              backgroundColor: Color.fromRGBO(51, 204, 166, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
              backgroundColor: Color.fromRGBO(51, 204, 166, 1),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark_outlined),
              label: 'About Us',
              backgroundColor: Color.fromRGBO(51, 204, 166, 1),
            ),

          ],
        ),
      ),
    );
  }
}