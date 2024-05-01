import 'package:e_waste/page1.dart';
import 'package:e_waste/wallet.dart';
import 'package:flutter/material.dart';

class MyReward extends StatefulWidget {
  const MyReward({Key? key}) : super(key: key);

  @override
  State<MyReward> createState() => _MyRewardState();
}

class _MyRewardState extends State<MyReward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3, left: 75,right: 40
              ),
              child:
              TextButton(
                onPressed:() {
                  Navigator.push
                    (context,
                      new MaterialPageRoute(
                        builder: (context)=> new MyWallet(),
                      ));
                },
                child:
                Text('Sorry The Rewards cannot be redeemed Yet \n\nReward Points Less Than 100  \n\nClick Here To Go Back ',
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
