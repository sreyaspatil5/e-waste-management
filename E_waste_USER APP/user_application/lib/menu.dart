import 'package:e_waste/about.dart';
import 'package:e_waste/contact.dart';
import 'package:e_waste/help.dart';
import 'package:e_waste/history.dart';
import 'package:e_waste/page1.dart';
import 'package:e_waste/reward.dart';
import 'package:e_waste/wallet.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp( home: Scaffold(
      backgroundColor: Color(0xffFDFFDF),
      appBar: AppBar(
          title: const Text("Welcome",style: TextStyle(
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
      body: const MyCustomForm(),),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 0, bottom: 50),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MyPage1()));

                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     const Center(child: Text("Issue E waste\ncollection request", style: TextStyle(fontSize: 15),)),
                  ),
                ),

                SizedBox(width: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHistory()));

                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     Center(child: Text("History")),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> MyWallet()));
                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     const Center(child: Text("Wallet", style: TextStyle(fontSize: 15),)),
                  ),
                ),

                const SizedBox(width: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MyContact()));
                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     const Center(child: Text("Contact Us")),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const MyAbout()));

                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     Center(child: Text("About Us", style: TextStyle(fontSize: 15),)),
                  ),
                ),

                const SizedBox(width: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const MyHelp()));

                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     const Center(child: Text("Help and Support")),
                  ),
                ),

              ],
            ),
            //SizedBox(height: 20,),




          ],
        ),
      ),
    );

  }
}
