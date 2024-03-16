import 'package:flutter/material.dart';

import '../core/global_widgets/appbar_global.dart';
import '../core/themes/theme_data.dart';
import '../notification/widgets/notification_tile_content_widget.dart';
import '../notification/widgets/notification_tile_image_widget.dart';
import '../notification_details/widgets/risk_remark_title_widget.dart';

class ScreenProjectSiteDetails extends StatelessWidget {
  final String projectName;
  const ScreenProjectSiteDetails({
    super.key,
    required this.projectName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_DRAWER_BACKGROUND_COLOR,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Site Details',
          widgets: const SizedBox(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            L_HEIGHT5,
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: APP_DRAWER_BACKGROUND_COLOR,
                    borderRadius: P_CONTAINER_RADIUS,
                    boxShadow: CONTAINER_SHADOW,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: NotificationTileImageWidget(),
                        ),
                      ),
                      L_WIDTH20,
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NotificationTileContentWidget(
                              icon: Icons.maps_home_work_rounded,
                              iconSize: 18,
                              title: projectName,
                              titleSize: 16,
                              titleWeight: FontWeight.bold,
                            ),
                            L_HEIGHT10,
                            const NotificationTileContentWidget(
                              icon: Icons.location_on_sharp,
                              iconSize: 15,
                              title: "Location , Thiruvananthapuram",
                              titleSize: 12,
                              titleWeight: FontWeight.normal,
                            ),
                            const NotificationTileContentWidget(
                              icon: Icons.calendar_month,
                              iconSize: 15,
                              title: "01-Jan-2024",
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
                            const NotificationTileContentWidget(
                              icon: Icons.currency_rupee_outlined,
                              iconSize: 15,
                              title: "25 Lakhs ",
                              titleSize: 12,
                              titleWeight: FontWeight.normal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 12,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: APP_DRAWER_BACKGROUND_COLOR,
                      borderRadius: P_CONTAINER_RADIUS,
                      boxShadow: CONTAINER_SHADOW,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/workdpr.png"),
                                    ),
                                  ),
                                ),
                                L_HEIGHT5,
                                const RiskRemarkTitleWidget(
                                  title: "DPR",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/labourdlr.png"),
                                    ),
                                  ),
                                ),
                                L_HEIGHT5,
                                const RiskRemarkTitleWidget(
                                  title: "DLR",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/risk.png"),
                                    ),
                                  ),
                                ),
                                L_HEIGHT5,
                                const RiskRemarkTitleWidget(
                                  title: "RISK",
                                  titleSize: 12,
                                  titleWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 70,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.orange,
                        ),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: const [
                            Tab(
                              text: 'DPR',
                            ),
                            Tab(
                              text: 'DLR',
                            ),
                            Tab(
                              text: 'RISK',
                            ),
                          ],
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.orange.shade100,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            //DPR List
                            ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                Color cardColor = index.isEven
                                    ? Colors.teal.shade100
                                    : Colors.orange.shade200;

                                return Card(
                                  elevation: 4,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 4),
                                  color: cardColor,
                                  child: ListTile(
                                    title: Text('DPR $index'),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.arrow_forward),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) => DprDetail(),
                                        //   ),
                                        // );
                                      },
                                    ),
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => DprDetail(),
                                      //   ),
                                      // );
                                    },
                                  ),
                                );
                              },
                            ),
                            //DLR List
                            ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                Color cardColor = index.isEven
                                    ? Colors.teal.shade100
                                    : Colors.orange.shade200;

                                return Card(
                                  elevation: 4,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 4),
                                  color: cardColor,
                                  child: ListTile(
                                    title: Text('DPR $index'),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.arrow_forward),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) => DprDetail(),
                                        //   ),
                                        // );
                                      },
                                    ),
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => DprDetail(),
                                      //   ),
                                      // );
                                    },
                                  ),
                                );
                              },
                            ),
                            //RISK List
                            ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                Color cardColor = index.isEven
                                    ? Colors.teal.shade100
                                    : Colors.orange.shade200;

                                return Card(
                                  elevation: 4,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 4),
                                  color: cardColor,
                                  child: ListTile(
                                    title: Text('DPR $index'),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.arrow_forward),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) => DprDetail(),
                                        //   ),
                                        // );
                                      },
                                    ),
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => DprDetail(),
                                      //   ),
                                      // );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
