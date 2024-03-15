import 'package:flutter/material.dart';

import '../core/themes/theme_data.dart';
import '../notification_details/widgets/notification_image_view_widget.dart';
import 'widgets/project_details_widget.dart';

class ScreenProjectDetails extends StatelessWidget {
  const ScreenProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double quarterHeight = screenHeight / 3;
    return Scaffold(
      body: Container(
        color: APP_DRAWER_BACKGROUND_COLOR,
        child: Column(
          children: [
            NotificationImageViewWidget(
              quarterHeight: quarterHeight,
            ),
            ProjectDetailsWidget(
              screenHeight: screenHeight,
              quarterHeight: quarterHeight,
            ),
          ],
        ),
      ),
    );
  }
}
