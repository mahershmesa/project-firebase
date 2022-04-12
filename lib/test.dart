import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  late UserCredential userCredential;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: deprecated_member_use
          Center(child: RaisedButton(onPressed: ()async{
          userCredential =
      await FirebaseAuth.instance.signInAnonymously();
      print(userCredential);
          },
          child: const Text("Sign In"),))
        ],
      ),
      
    );
  }
}