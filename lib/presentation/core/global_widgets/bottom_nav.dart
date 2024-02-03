// ignore_for_file: must_be_immutable

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../const/ui_const.dart';

//ValueNotifier<int> indexChangeNotifier = ValueNotifier(1);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (BuildContext ctx, int newIndex, Widget? _) {
        return CurvedNavigationBar(
          index: newIndex,
          backgroundColor: Colors.white,
          color: Colors.orangeAccent,
          buttonBackgroundColor: Colors.orangeAccent,
          animationCurve: Curves.easeOut,
          animationDuration: const Duration(milliseconds: 400),
          height: 60.0,
          items: const <Widget>[
            Icon(Icons.person, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
          ],
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
        );
      },
    );
  }
}
