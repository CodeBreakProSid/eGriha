// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:egraha_app/presentation/core/asset_url/asset_url.dart';
import 'package:egraha_app/presentation/core/themes/theme_data.dart';
import 'package:egraha_app/presentation/notification_details/widgets/risk_remark_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

import '../../application/profile/profile_bloc.dart';
import '../core/global_widgets/app_drawer.dart';
import '../core/global_widgets/appbar_global.dart';
import '../core/global_widgets/appbar_icon_widget.dart';
import '../notification/widgets/notification_tile_content_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> imageIndexChangeNotifier = ValueNotifier<int>(0);

    List<String> images = [
      "assets/home_poster1.jpg",
      "assets/home_poster2.jpg",
      "assets/home_poster3.jpg",
      "assets/hb.jpg",
    ];

    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (imageIndexChangeNotifier.value < images.length - 1) {
          imageIndexChangeNotifier.value++;
        } else {
          imageIndexChangeNotifier.value = 0;
        }
      },
    );

    //Get existing profile info from server through event calling
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<ProfileBloc>(context)
            .add(const ProfileEvent.getProfileScreenData());
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Home',
          widgets: AppBarIconWidgetList(
            iconData: Icons.notifications,
          ),
        ),
      ),
      body: ListView(
        children: [
          L_HEIGHT10,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Column(
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
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      L_WIDTH50,
                      Column(
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
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      L_WIDTH50,
                      Column(
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
                            title: "Risk",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      L_WIDTH50,
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/link.png"),
                              ),
                            ),
                          ),
                          L_HEIGHT5,
                          const RiskRemarkTitleWidget(
                            title: "Web lnk",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      L_WIDTH50,
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/contact.png"),
                              ),
                            ),
                          ),
                          L_HEIGHT5,
                          const RiskRemarkTitleWidget(
                            title: "Contacts",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      L_WIDTH50,
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/usermanual.png"),
                              ),
                            ),
                          ),
                          L_HEIGHT5,
                          const RiskRemarkTitleWidget(
                            title: "Manual",
                            titleSize: 12,
                            titleWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          L_HEIGHT5,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 240,
            child: ValueListenableBuilder(
              valueListenable: imageIndexChangeNotifier,
              builder: (BuildContext ctx, int currentPage, Widget? _) {
                return AnimatedSwitcher(
                  switchInCurve: Curves.linear,
                  duration: const Duration(seconds: 2),
                  child: Image.asset(
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    images[currentPage],
                    key: ValueKey<int>(currentPage),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          L_HEIGHT5,
          const Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    "Last Updated",
                    style: TextStyle(
                      fontFamily: "Cormorant",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        "See Info",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                      L_WIDTH5,
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.red,
                        size: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          L_HEIGHT5,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: APP_DRAWER_BACKGROUND_COLOR,
                borderRadius: P_CONTAINER_RADIUS,
                boxShadow: CONTAINER_SHADOW,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
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
                            backgroundColor:
                                const Color.fromARGB(255, 245, 245, 245),
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
          ),
          L_HEIGHT5,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Assigned Projects",
                        style: TextStyle(
                          fontFamily: "Cormorant",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          ),
                          L_WIDTH5,
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.red,
                            size: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                L_HEIGHT10,
                LimitedBox(
                  maxHeight: 230,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Column(
                        children: [
                          Container(
                            width: 130,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  AssetUrls.NOTIFICATION_LOGO,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Project $index",
                            style: const TextStyle(
                              fontFamily: "Cormorant",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext ctx, int index) {
                      return const SizedBox(width: 5);
                    },
                    itemCount: 10,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
