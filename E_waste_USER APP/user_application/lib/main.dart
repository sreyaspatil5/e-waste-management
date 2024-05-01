import 'package:e_waste/about.dart';
import 'package:e_waste/contact.dart';
import 'package:e_waste/history.dart';
import 'package:e_waste/login.dart';
import 'package:e_waste/menu.dart';
import 'package:e_waste/page1.dart';
import 'package:e_waste/register.dart';
import 'package:e_waste/reward.dart';
import 'package:e_waste/submit.dart';
import 'package:e_waste/wallet.dart';
import 'package:flutter/material.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeLogin(),
    routes: {
      'page1': (context)=>MyPage1(),
      'wallet': (context)=> MyWallet(),
      'submit': (context)=> MySubmit(),
      'reward': (context)=>MyReward(),
      'login': (context)=>HomeLogin(),
      'about': (context)=>MyAbout(),
      'history':(context)=>MyHistory(),
      'menu':(context)=>MyMenu(),
      'contact':(context)=>MyContact(),
      'register':(context)=>MyRegister()
      //'support': (context)=>
    },
  ));
}
