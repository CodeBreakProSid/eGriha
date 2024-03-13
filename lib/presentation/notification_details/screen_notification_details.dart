import 'package:flutter/material.dart';

import '../core/themes/theme_data.dart';
import 'widgets/notification_details_widget.dart';
import 'widgets/notification_image_view_widget.dart';

class ScreenNotificationDetails extends StatelessWidget {
  const ScreenNotificationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double quarterHeight = screenHeight / 3;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: APP_DRAWER_BACKGROUND_COLOR,
        ),
        child: Column(
          children: [
            //Common image widget for notification
            NotificationImageViewWidget(
              quarterHeight: quarterHeight,
            ),
            //Other notification details widget
            NotificationDetailsWidget(
              screenHeight: screenHeight,
              quarterHeight: quarterHeight,
            ),
          ],
        ),
      ),
    );
  }
}
