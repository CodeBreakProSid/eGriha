import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';
import '../../notification/widgets/notification_tile_content_widget.dart';
import '../../notification_details/widgets/risk_remark_title_widget.dart';

class ProjectDetailsWidget extends StatelessWidget {
  const ProjectDetailsWidget({
    super.key,
    required this.screenHeight,
    required this.quarterHeight,
  });

  final double screenHeight;
  final double quarterHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: APP_DRAWER_BACKGROUND_COLOR,
      height: screenHeight - quarterHeight,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: APP_DRAWER_BACKGROUND_COLOR,
            ),
            child: Padding(
              padding: PADDING8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Project heading
                  const NotificationTileContentWidget(
                    icon: Icons.maps_home_work_rounded,
                    iconSize: 18,
                    title: "Swapnakoodu",
                    titleSize: 16,
                    titleWeight: FontWeight.bold,
                  ),
                  L_HEIGHT5,
                  //Project summary
                  const RiskRemarkTitleWidget(
                    title:
                        "പാവപ്പെട്ട ജനങ്ങൾക്ക് വേണ്ടി സർക്കാർ നടത്തുന്ന ഒരു ഭവന നിർമ്മാണ പദ്ധതി",
                    titleSize: 12,
                    titleWeight: FontWeight.normal,
                  ),
                  DIVIDER_WIDGET,
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: APP_DRAWER_BACKGROUND_COLOR,
                      borderRadius: P_CONTAINER_RADIUS,
                      boxShadow: CONTAINER_SHADOW,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Project Details
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RiskRemarkTitleWidget(
                                title: "Project Details",
                                titleSize: 12,
                                titleWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          DIVIDER_WIDGET,
                          const RiskRemarkTitleWidget(
                            title: "New Construction",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          L_HEIGHT5,
                          const RiskRemarkTitleWidget(
                            title: "Category : KIFBI",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          L_HEIGHT5,
                          const Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "Start Date : 02-Jan-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "End Date : 02-Jan-2025",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          L_HEIGHT10,
                          Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: RiskRemarkTitleWidget(
                                  title: "Total number of project sites",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 2,
                                      backgroundColor: Colors.white,
                                      surfaceTintColor: Colors.white,
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text("32 Nos")),
                              )
                            ],
                          ),
                          L_HEIGHT20,
                          //AS Information
                          const RiskRemarkTitleWidget(
                            title: "AS Information",
                            titleSize: 12,
                            titleWeight: FontWeight.bold,
                          ),
                          DIVIDER_WIDGET,
                          L_HEIGHT5,
                          const RiskRemarkTitleWidget(
                            title: "AS No : AS/01/06M/2024",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.currency_rupee,
                                  iconSize: 15,
                                  title: "AS Amount : 8 Cr",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "02-Jan-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          L_HEIGHT20,
                          //TS Information
                          const RiskRemarkTitleWidget(
                            title: "TS Information",
                            titleSize: 12,
                            titleWeight: FontWeight.bold,
                          ),
                          DIVIDER_WIDGET,
                          L_HEIGHT5,
                          const RiskRemarkTitleWidget(
                            title: "TS No : TS/01/06M/2024",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.currency_rupee,
                                  iconSize: 15,
                                  title: "TS Amount : 7.5 Cr",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "02-Jan-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
