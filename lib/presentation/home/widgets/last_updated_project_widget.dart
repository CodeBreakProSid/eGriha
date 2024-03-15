import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';
import '../../notification/widgets/notification_tile_content_widget.dart';

class LastUpdatedProjectWidget extends StatelessWidget {
  const LastUpdatedProjectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PADDING5,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: APP_DRAWER_BACKGROUND_COLOR,
          borderRadius: P_CONTAINER_RADIUS,
          boxShadow: CONTAINER_SHADOW,
        ),
        child: Padding(
          padding: PADDING5,
          child: Row(
            children: [
              const Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NotificationTileContentWidget(
                      icon: Icons.maps_home_work_rounded,
                      iconSize: 18,
                      title: "Swapnakoodu",
                      titleSize: 16,
                      titleWeight: FontWeight.bold,
                    ),
                    L_HEIGHT15,
                    NotificationTileContentWidget(
                      icon: Icons.location_on_sharp,
                      iconSize: 15,
                      title: "Vellayambalam, Thiruvananthapuram",
                      titleSize: 12,
                      titleWeight: FontWeight.normal,
                    ),
                    NotificationTileContentWidget(
                      icon: Icons.calendar_month,
                      iconSize: 15,
                      title: "01-Jan-2024",
                      titleSize: 12,
                      titleWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
