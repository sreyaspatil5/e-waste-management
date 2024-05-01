import 'package:e_waste/about.dart';
import 'package:e_waste/help.dart';
import 'package:e_waste/history.dart';
import 'package:e_waste/login.dart';
import 'package:e_waste/reward.dart';
import 'package:e_waste/submit.dart';
import 'package:e_waste/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyPage1 extends StatefulWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  State<MyPage1> createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
final TextEditingController varM=TextEditingController();
final TextEditingController varN=TextEditingController();
final TextEditingController varO=TextEditingController();
final TextEditingController varP=TextEditingController();
final TextEditingController varQ=TextEditingController();

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
          title: const Text("Issue E-Waste\nCollection Request"),
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
          children: [

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05, right: 35, left: 35),
                child: Column(
                  children: [
                    TextFormField(
                      controller: varM ,
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
                      height: 30,
                    ),
                    TextFormField(
                      controller: varN,

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
                      height: 30,
                    ),
                    TextFormField(
                      controller: varO,
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
                    TextFormField(
                      controller: varP,
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
                    TextFormField(
                      controller: varQ,
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
                      height: 40,
                    ),
                    Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(27, 168, 133, 1)),
                          onPressed:() {
                            Navigator.push
                              (context,
                                new MaterialPageRoute(
                                  builder: (context)=> new MySubmit(),
                                ));
                          },
                          child: const Text('ISSUE REQUEST',style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 25
                          ),),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
