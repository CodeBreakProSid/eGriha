import 'package:flutter/material.dart';

import '../core/global_widgets/appbar_global.dart';
import '../core/themes/theme_data.dart';
import '../notification/widgets/notification_tile_content_widget.dart';
import '../notification/widgets/notification_tile_image_widget.dart';
import '../project_site_details/screen_project_site_details.dart';

class ScreenProjectSites extends StatelessWidget {
  const ScreenProjectSites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Project Sites',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenProjectSiteDetails(
                    projectName: "Swapnakoodu Site ${index + 1}",
                  ),
                ),
              );
            },
            //Container for single notification tile
            child: Container(
              padding: PADDING5,
              decoration: BoxDecoration(
                color: APP_DRAWER_BACKGROUND_COLOR,
                borderRadius: P_CONTAINER_RADIUS,
                boxShadow: CONTAINER_SHADOW,
              ),
              child: Row(
                children: [
                  //Notification tile image widget
                  const Expanded(
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
                          title: "Swapnakoodu Site ${index + 1}",
                          titleSize: 16,
                          titleWeight: FontWeight.bold,
                        ),
                        L_HEIGHT10,
                        NotificationTileContentWidget(
                          icon: Icons.location_on_sharp,
                          iconSize: 15,
                          title: "Location ${index + 1}, Thiruvananthapuram",
                          titleSize: 12,
                          titleWeight: FontWeight.normal,
                        ),
                        NotificationTileContentWidget(
                          icon: Icons.calendar_month,
                          iconSize: 15,
                          title: "${index + 1}-Jan-2024",
                          titleSize: 12,
                          titleWeight: FontWeight.normal,
                        ),
                        const NotificationTileContentWidget(
                          icon: Icons.person,
                          iconSize: 15,
                          title: "Site Engineer : Vimal",
                          titleSize: 12,
                          titleWeight: FontWeight.normal,
                        ),
                        L_HEIGHT5,
                        NotificationTileContentWidget(
                          icon: Icons.currency_rupee_outlined,
                          iconSize: 15,
                          title: "${index + 10} L ",
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
        itemCount: 30,
      ),
    );
  }
}
