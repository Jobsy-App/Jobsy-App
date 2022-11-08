import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobsy_v2/Widgets/Enterpreneur_bottom_nav_bar.dart';

class Enterpreneur_Upload_Page extends StatefulWidget {

  @override
  State<Enterpreneur_Upload_Page> createState() => _Enterpreneur_Upload_PageState();
}

class _Enterpreneur_Upload_PageState extends State<Enterpreneur_Upload_Page> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.9],
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: Enterpreneur_BottomNavigationBarForApp(indexNum: 2),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Entrepreneur Upload Page'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent.shade400, Colors.blueAccent.shade400],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.2, 0.9],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
