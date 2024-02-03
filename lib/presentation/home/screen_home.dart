// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../core/global_widgets/app_drawer.dart';
import '../core/global_widgets/appbar_global.dart';
import '../core/global_widgets/appbar_icon_widget.dart';
import '../core/global_widgets/bottom_nav.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Home',
          widgets: AppBarIconWidgetList(
            iconData: Icons.notifications,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
