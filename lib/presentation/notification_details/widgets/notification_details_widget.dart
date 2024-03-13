import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';
import '../../notification/widgets/notification_tile_content_widget.dart';
import 'risk_remark_title_widget.dart';

class NotificationDetailsWidget extends StatelessWidget {
  const NotificationDetailsWidget({
    super.key,
    required this.screenHeight,
    required this.quarterHeight,
  });

  final double screenHeight;
  final double quarterHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: APP_DRAWER_BACKGROUND_COLOR,
      ),
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
                  const NotificationTileContentWidget(
                    icon: Icons.maps_home_work_rounded,
                    iconSize: 18,
                    title: "Swapnakoodu",
                    titleSize: 16,
                    titleWeight: FontWeight.bold,
                  ),
                  L_HEIGHT5,
                  const RiskRemarkTitleWidget(
                    title:
                        "പാവപ്പെട്ട ജനങ്ങൾക്ക് വേണ്ടി സർക്കാർ നടത്തുന്ന ഒരു ഭവന നിർമ്മാണ പദ്ധതി",
                    titleSize: 12,
                    titleWeight: FontWeight.normal,
                  ),
                  const RiskRemarkTitleWidget(
                    title: "32 Nos, 8 Crs",
                    titleSize: 12,
                    titleWeight: FontWeight.normal,
                  ),
                  L_HEIGHT5,
                  const Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: NotificationTileContentWidget(
                          icon: Icons.location_on_sharp,
                          iconSize: 15,
                          title: "Vellayambalam, Thiruvananthapuram",
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
                  DIVIDER_WIDGET,
                  L_HEIGHT10,
                  //Risk Details
                  Container(
                    decoration: BoxDecoration(
                      color: APP_DRAWER_BACKGROUND_COLOR,
                      borderRadius: P_CONTAINER_RADIUS,
                      boxShadow: CONTAINER_SHADOW,
                    ),
                    child: const Padding(
                      padding: PADDING8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RiskRemarkTitleWidget(
                            title: "Risk Details",
                            titleSize: 13,
                            titleWeight: FontWeight.bold,
                          ),
                          L_HEIGHT5,
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.person,
                                  iconSize: 15,
                                  title: "Akshay Ashok A",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "15-Feb-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          L_HEIGHT8,
                          RiskRemarkTitleWidget(
                            title:
                                "Construction process stopped due to residential people involvement.",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ),
                  ),
                  L_HEIGHT8,
                  //Remarks container
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: P_CONTAINER_RADIUS,
                      boxShadow: CONTAINER_SHADOW,
                    ),
                    child: const Padding(
                      padding: PADDING8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Remarks
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RiskRemarkTitleWidget(
                                title: "Remarks",
                                titleSize: 14,
                                titleWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          L_HEIGHT20,
                          //EE Remark
                          RiskRemarkTitleWidget(
                            title: "EE Remark",
                            titleSize: 13,
                            titleWeight: FontWeight.bold,
                          ),
                          DIVIDER_WIDGET,
                          L_HEIGHT5,
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.person,
                                  iconSize: 15,
                                  title: "Sabu K Sadhasivan",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 12,
                                  title: "05-Mar-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          L_HEIGHT8,
                          RiskRemarkTitleWidget(
                            title: "Contact with the local police.",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          L_HEIGHT20,
                          //RE Remark
                          RiskRemarkTitleWidget(
                            title: "RE Remark",
                            titleSize: 13,
                            titleWeight: FontWeight.bold,
                          ),
                          DIVIDER_WIDGET,
                          L_HEIGHT5,
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.person,
                                  iconSize: 15,
                                  title: "Manjula KP",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "06-Mar-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          L_HEIGHT8,
                          RiskRemarkTitleWidget(
                            title: "Kindly contact LP & Local politicians.",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          L_HEIGHT20,
                          //CE Remark
                          RiskRemarkTitleWidget(
                            title: "CE Remark",
                            titleSize: 13,
                            titleWeight: FontWeight.bold,
                          ),
                          DIVIDER_WIDGET,
                          L_HEIGHT5,
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.person,
                                  iconSize: 15,
                                  title: "Hari",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "07-Mar-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          L_HEIGHT8,
                          RiskRemarkTitleWidget(
                            title: "Issue reported to the KSHB commissioner.",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                          L_HEIGHT20,
                          //KSHB Secretary
                          RiskRemarkTitleWidget(
                            title: "Secretary Remark",
                            titleSize: 13,
                            titleWeight: FontWeight.bold,
                          ),
                          DIVIDER_WIDGET,
                          L_HEIGHT5,
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: NotificationTileContentWidget(
                                  icon: Icons.person,
                                  iconSize: 15,
                                  title: "Rahul Krishna",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: NotificationTileContentWidget(
                                  icon: Icons.calendar_month,
                                  iconSize: 15,
                                  title: "08-Mar-2024",
                                  titleSize: 12,
                                  titleWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          L_HEIGHT8,
                          RiskRemarkTitleWidget(
                            title: "Issue solved.",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ),
                  ),
                  L_HEIGHT5
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
