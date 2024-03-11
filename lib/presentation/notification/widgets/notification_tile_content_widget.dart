import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';

class NotificationTileContentWidget extends StatelessWidget {
  const NotificationTileContentWidget({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.title,
    required this.titleSize,
    required this.titleWeight,
  });

  final IconData icon;
  final double iconSize;
  final String title;
  final double titleSize;
  final FontWeight titleWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        L_WIDTH5,
        Text(
          title,
          style: TextStyle(
            fontWeight: titleWeight,
            fontSize: titleSize,
          ),
        ),
      ],
    );
  }
}
