import 'package:egraha_app/presentation/core/global_widgets/appbar_global.dart';
import 'package:flutter/material.dart';

import '../core/global_widgets/app_drawer.dart';

class ScreenProject extends StatelessWidget {
  const ScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Project',
          widgets: const SizedBox(),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Project'),
        ),
      ),
    );
  }
}
