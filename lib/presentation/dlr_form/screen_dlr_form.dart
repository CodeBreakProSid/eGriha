import 'package:flutter/material.dart';

import '../core/global_widgets/appbar_global.dart';

class ScreenDLRForm extends StatelessWidget {
  const ScreenDLRForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Work Progress',
          widgets: const SizedBox(),
        ),
      ),
    );
  }
}
