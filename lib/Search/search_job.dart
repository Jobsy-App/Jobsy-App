import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.white, Colors.white],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.2, 0.9],
      ),
    ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Search Job'),
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
