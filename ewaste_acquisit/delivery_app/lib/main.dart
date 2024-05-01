import 'package:ewaste_acquisit/previous_collections_history.dart';
import 'package:ewaste_acquisit/product.dart';
import 'package:ewaste_acquisit/wallet.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'about_us.dart';
import 'help_and_support.dart';
import 'nearby_sawas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

//void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    const appTitle = 'E-Waste Acquisit';

    return MaterialApp( title: appTitle, home: Scaffold(
      backgroundColor: Color(0xffFDFFDF),
      appBar: AppBar(
        backgroundColor: Color(0xffFF8A6C),
        title:  const Text(appTitle),

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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const Product()));

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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const PreviousCollectionHistory()));

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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const Wallet()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const NearbySawas()));
                  },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff5ffaa2)),
                    width: width *0.40,
                    height: height *0.20,
                    child:     const Center(child: Text("SAWAS\n near me")),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const AboutUs()));

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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const HelpAndSupport()));

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