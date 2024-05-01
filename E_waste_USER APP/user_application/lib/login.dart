
import 'package:e_waste/menu.dart';
import 'package:e_waste/register.dart';
import 'package:flutter/material.dart';


class HomeLogin extends StatefulWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login/SignUp",style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 28),
          ),
          toolbarHeight: 100,
            backgroundColor: Color.fromRGBO(27, 168, 133, 1)
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  /*TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
*/
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            /*Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "RetailerApp-EwasteAcquisit",
                  style: TextStyle(
                      color: Color.fromRGBO(29, 190, 151, 1.0),
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                )),*/
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black),
                )),
            Container(

              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: 'User Name',
                ),

                validator: (value) {
                  if (value!.isEmpty) {
                    return 'this field is Required';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: 'Password',
                ),
                /*onChanged: (value){
                  setState((){
                    passwordController=value as TextEditingController;
                  });
                },*/

              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Color.fromRGBO(76, 82, 112, 1.0)),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(246, 82, 160, 1.0)),
                    onPressed:() {
                      Navigator.push
                        (context,
                          new MaterialPageRoute(
                            builder: (context)=> new MyMenu(),
                          ));
                    },
                  child: const Text('Login',style: TextStyle(fontSize: 25)),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(76, 82, 112, 1.0)),
                  ),
                  onPressed: () {
                    Navigator.push
                      (context,
                        new MaterialPageRoute(
                          builder: (context)=> new MyRegister(),
                        ));
                  },
                )
              ],
            ),
          ],
        ));
  }
}
