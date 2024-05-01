import 'package:e_waste/page1.dart';
import 'package:e_waste/reward.dart';
import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
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
        title: Text("Wallet",style: TextStyle(
            color: Colors.white, fontSize: 35),
        ),
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

      Stack(

        children: [
          Container(
            padding: EdgeInsets.only(left:35 ,top:50, right: 200,bottom: 200),
            child: Image.asset('assets/reward.png',scale:0.3),
          ),
          Container(
            padding: EdgeInsets.only(left:225 ,top:130 ),
            child: Text('Reward Points',style: TextStyle(
            color: Colors.black,fontSize: 35,
            fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:255 ,top:80 ),
            child: Text('20',style: TextStyle(
                color: Colors.black,fontSize: 35,
                fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:30 ,top:230,right: 30 ),
            child: Container(
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
                          builder: (context)=> new MyReward(),
                        ));
                  },
                  child: const Text('ISSUE REQUEST',style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 25
                  ),),
                )),
          ),
          Container(
            padding: EdgeInsets.only(top:130),
            child: Image.asset('assets/line2.png'),
          ),
          Container(
            padding: EdgeInsets.only(left:50 ,top:350 ),
            child: Image.asset('assets/surprise.png',height: 120,width: 120),
          ),
          Container(
            padding: EdgeInsets.only(left:200 ,top:400 ),
            child: Text('Claimed Rewards',style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          Container(
            padding:EdgeInsets.only(left:100 ,top:500),
            child: Text('Sorry No Rewards Claimed.',style: TextStyle(
            fontSize: 25,
            color: Colors.black),
            ),
          ),
        ],

    )

    ],
    ),
    ),
    );

  }
}
