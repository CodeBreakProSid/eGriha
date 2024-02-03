// ignore_for_file: must_be_immutable

import 'package:egraha_app/presentation/profile/screen_profile.dart';
import 'package:egraha_app/presentation/project/screen_project.dart';
import 'package:flutter/material.dart';

import '../core/const/ui_const.dart';
import '../core/global_widgets/bottom_nav.dart';
import '../home/screen_home.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({
    super.key,
  });

  final pages = [
    const ScreenProfile(),
    const ScreenHome(),
    const ScreenProject(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext ctx, int newIndex, Widget? _) {
          return pages[newIndex];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
