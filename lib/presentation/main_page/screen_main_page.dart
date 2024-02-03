import 'package:egraha_app/presentation/profile/screen_profile.dart';
import 'package:egraha_app/presentation/project/screen_project.dart';
import 'package:flutter/material.dart';

import '../core/global_widgets/app_drawer.dart';
import '../core/global_widgets/bottom_nav.dart';
import '../core/themes/theme_data.dart';
import '../home/screen_home.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final pages = [
    const ScreenProfile(),
    const ScreenHome(),
    const ScreenProject(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: const AppDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Colors.orangeAccent,
      //   actions: [
      //     IconButton(
      //       padding: EdgeInsets.zero,
      //       splashRadius: 16,
      //       icon: const Icon(
      //         Icons.notifications,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {
      //         // Get.toNamed(Routes.NOTIFICATION);
      //       },
      //     ),
      //     const SizedBox(width: 4),
      //   ],
      //   title: Text(
      //     'Home',
      //     style: APP_BAR_TEXT_STYLE,
      //   ),
      // ),
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext ctx, int newIndex, Widget? _) {
          return pages[newIndex];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
