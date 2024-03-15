import 'package:egraha_app/presentation/core/global_widgets/appbar_global.dart';
import 'package:flutter/material.dart';

import '../core/global_widgets/app_drawer.dart';
import '../core/themes/theme_data.dart';
import '../notification/widgets/notification_tile_content_widget.dart';
import '../notification/widgets/notification_tile_image_widget.dart';
import '../notification_details/widgets/risk_remark_title_widget.dart';

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
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: PADDING5,
        itemBuilder: (BuildContext ctx, int index) {
          return GestureDetector(
            //Calling detailed notification view
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const ScreenNotificationDetails(),
              //   ),
              // );
            },
            //Container for single notification tile
            child: Container(
              padding: PADDING5,
              decoration: BoxDecoration(
                color: APP_DRAWER_BACKGROUND_COLOR,
                borderRadius: P_CONTAINER_RADIUS,
                boxShadow: CONTAINER_SHADOW,
              ),
              child: const Row(
                children: [
                  //Notification tile image widget
                  Expanded(
                    flex: 3,
                    child: NotificationTileImageWidget(),
                  ),
                  L_WIDTH10,
                  Expanded(
                    flex: 7,
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
                        L_HEIGHT10,
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
                        NotificationTileContentWidget(
                          icon: Icons.currency_rupee,
                          iconSize: 15,
                          title: "10 Cr",
                          titleSize: 12,
                          titleWeight: FontWeight.normal,
                        ),
                        L_HEIGHT5,
                        RiskRemarkTitleWidget(
                          title:
                              "പാവപ്പെട്ട ജനങ്ങൾക്ക് വേണ്ടി സർക്കാർ നടത്തുന്ന ഒരു ഭവന നിർമ്മാണ പദ്ധതി",
                          titleSize: 12,
                          titleWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext ctx, int index) {
          return const SizedBox(height: 5);
        },
        itemCount: 60,
      ),
    );
  }
}
