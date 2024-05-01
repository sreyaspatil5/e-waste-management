import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  /* late String _ewasteType,_ewasteProductName,_ewasteProductNumber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5ffaa2),
          title: const Text('Issue an E-wasteCollectionRequest'),

        ),
      ),
    );
  }*/

  //late String? _ewastetype;
  //late String? _workingcondition;
  //late String? _how_long_it_was_used;
  //late String? _parent_company;
  //late String? _ParentCompanyInfo;
  final _ewastetype = TextEditingController();
  final _workingcondition =TextEditingController();
  final _how_long_it_was_used=TextEditingController();
  final _parent_company=TextEditingController();
  final _ParentCompanyInfo=TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _ewasteType() {

    return Container(

      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xd8fcec83),),
      child: TextFormField(
        controller: _ewastetype,
        decoration: const InputDecoration(labelText: 'E-waste Type (TV/Mobile/Fridge/LEDs/Circuitry)'),
        keyboardType: TextInputType.text,

        validator: ( value) {
          if (value!.isEmpty) {
            return 'This field is Required';
          }

          //return null;
        },
        /*onSaved: (value) {
          _ewastetype = value!;
        },*/
      ),
    );
  }
  Widget _workingCondition() {
    return Container(

      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),

      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xd8fcec83),),

      child: TextFormField(

        controller: _workingcondition,
        decoration: const InputDecoration(labelText: 'Working Condition (Working/NonWorking/Partially working)'),
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return 'This field is Required';
          }

          /* if (!RegExp(
              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
              .hasMatch(value)) {
            return 'Please enter a valid email Address';
          }

          return null;*/
        },
        /*onSaved: (value) {
          _workingcondition = value!;
        },*/
      ),
    );
  }

  Widget _howLongItWasUsed() {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xd8fcec83),),
      child: TextFormField(
        controller: _how_long_it_was_used,
        decoration: const InputDecoration(labelText: 'How long it was used'),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is Required';
          }

          return null;
        },

      ),
    );
  }

  Widget _ParentCompany() {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xd8fcec83),),
      child: TextFormField(
        controller: _parent_company,
        decoration: const InputDecoration(labelText: 'Parent Company of Product'),
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return 'This field is Required';
          }

          return null;
        },
       /* onSaved: (value) {
          _parent_company = value!;
        },*/
      ),
    );
  }

  /*Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Approx buying value'),
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return 'This field is Required';
        }

        return null;
      },
      onSaved: (value) {
        _parent_company = value!;
      },
    );
  }*/

  Widget _additionalRemarks() {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
      decoration:  BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xd8fcec83),),
      child: TextFormField(
        controller: _ParentCompanyInfo,
        decoration: const InputDecoration(labelText: 'Additional Remarks'),
        keyboardType: TextInputType.text,
        validator: (value) {

        },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFFDF),
      appBar: AppBar(title: const Text("Issue An E-waste Collection Request"),backgroundColor: const Color(0xffFF8a6c),),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _ewasteType(),
                SizedBox(height :10),
                _workingCondition(),
                SizedBox(height :10),
                _howLongItWasUsed(),
                SizedBox(height :10),
                _ParentCompany(),
                SizedBox(height :10),

                _additionalRemarks(),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text(
                    'Issue Request',
                    style: TextStyle(color: Color(0xfff1f1f1), fontSize: 16,),
                  ),
                  onPressed: () {
                    FirebaseFirestore.instance.collection('issue_e_waste_2').add(
                      {
                        'ewastetype':_ewastetype.text,
                        'workingcondition':_workingcondition.text,
                        'how_long_it_was_used':_how_long_it_was_used.text,
                         'parent_company':_parent_company.text,
                         'ParentCompanyInfo':_ParentCompanyInfo.text,
                      }
                    );

                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    _formKey.currentState!.save();
                    // print(_ewastetype);
                    // print(_workingcondition);
                    // print(_phoneNumber);
                    // print(_parent_company);
                    // print(_how_long_it_was_used);
                    // print(_ParentCompanyInfo);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
