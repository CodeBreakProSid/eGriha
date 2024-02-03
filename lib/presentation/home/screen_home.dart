import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CurvedNavigationBar(
      //   index: 1,
      //   backgroundColor: Colors.white,
      //   color: Colors.orangeAccent,
      //   buttonBackgroundColor: Colors.orangeAccent,
      //   animationCurve: Curves.easeOut,
      //   animationDuration: const Duration(milliseconds: 400),
      //   height: 60.0,
      //   items: const <Widget>[
      //     Icon(Icons.person, size: 30),
      //     Icon(Icons.home, size: 30),
      //     Icon(Icons.list, size: 30),
      //   ],
      //   onTap: (index) {
      //     //Handle button tap
      //   },
      // ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
