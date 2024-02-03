import 'package:flutter/material.dart';

import '../core/global_widgets/app_drawer.dart';
import '../core/global_widgets/appbar_global.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Profile',
          widgets: const SizedBox(),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Profile'),
        ),
      ),
    );
  }
}
