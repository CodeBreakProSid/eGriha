import 'package:egraha_app/presentation/core/themes/theme_data.dart';
import 'package:flutter/material.dart';

import '../global_widgets_fun/app_drawer_navigation.dart';

class AppDrawerTile extends StatelessWidget {
  final IconData icon;
  final String tileName;
  final int tileKey;
  const AppDrawerTile({
    super.key,
    required this.icon,
    required this.tileName,
    required this.tileKey,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // enabled: Get.currentRoute != Routes.OFFICER_HOME,
      title: Padding(
        padding: LIST_ICON_TEXT_PADDING,
        child: Text(
          tileName,
          style: APP_DRAWER_TEXT_STYLE,
        ),
      ),
      leading: Padding(
        padding: LIST_ICON_TEXT_PADDING,
        child: Icon(
          icon,
          size: 30,
          color: ICON_COLOR,
        ),
      ),
      onTap: () {
        appDrawerNavigation(context, tileKey);
      },
    );
  }
}
