// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../themes/theme_data.dart';

class AppBarGlobal extends StatelessWidget {
  AppBarGlobal({
    super.key,
    this.widgets,
    required this.appBarTitle,
    this.iconData,
  });
  Widget? widgets;
  String appBarTitle;
  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orangeAccent,
      actions: [
        widgets!,
      ],
      title: Text(
        appBarTitle,
        style: APP_BAR_TEXT_STYLE,
      ),
    );
  }
}
