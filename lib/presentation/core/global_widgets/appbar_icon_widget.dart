// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../notification/screen_notification.dart';

class AppBarIconWidgetList extends StatelessWidget {
  AppBarIconWidgetList({
    super.key,
    required this.iconData,
  });
  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          splashRadius: 16,
          icon: Icon(
            iconData,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenNotification(),
              ),
            );
          },
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
