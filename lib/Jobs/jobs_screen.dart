import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobsy_v2/user_state.dart';

class JobScreen extends StatefulWidget {

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // decoration: BoxDecoration(
      //
      // ),
      appBar: AppBar(title: const Text('Jobs Screen'),),
      body: ElevatedButton(
        onPressed: (){
          _auth.signOut();
          Navigator.canPop(context) ? Navigator.pop(context): null;
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => UserState()));

        },
        child: const Text('Logout'),
      ),
    );
  }
}
