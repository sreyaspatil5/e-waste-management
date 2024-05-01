import 'package:flutter/material.dart';
class PreviousCollectionHistory extends StatefulWidget {
  const PreviousCollectionHistory({Key? key}) : super(key: key);

  @override
  State<PreviousCollectionHistory> createState() => _ProductState();
}

class _ProductState extends State<PreviousCollectionHistory> {
  Widget _widget () {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xd8fcec83),),
      child: TextFormField(
        decoration: const InputDecoration(labelText: 'Additional Remarks'),
        keyboardType: TextInputType.number,
        /*try {
          validator: (value) {
        } catch (e, s) {
          print(s);
        }
        },*/

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFF8A6C),
          title: const Text('Previous Collections by you'),

        ),
      ),
    );
  }



}
