// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

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
            // Get.toNamed(Routes.NOTIFICATION);
          },
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
