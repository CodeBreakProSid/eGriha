import 'package:flutter/material.dart';

import '../asset_url/asset_url.dart';
import '../const/ui_const.dart';
import '../themes/theme_data.dart';
import 'app_drawer_tile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: APP_DRAWER_BACKGROUND_COLOR,
      width: 350,
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      APP_DRAWER_HEADER_COLOR,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Akshay Ashok A',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Keltron',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AppDrawerTile(
                tileName: 'Home',
                icon: Icons.home,
                tileKey: APP_TILE_VALUE['home']!,
              ),
              const SizedBox(height: 10),
              AppDrawerTile(
                tileName: 'Profile',
                icon: Icons.person,
                tileKey: APP_TILE_VALUE['profile']!,
              ),
              const SizedBox(height: 10),
              AppDrawerTile(
                tileName: 'Projects',
                icon: Icons.home_work_outlined,
                tileKey: APP_TILE_VALUE['duties']!,
              ),
              const SizedBox(height: 10),
              AppDrawerTile(
                tileName: 'Manual',
                icon: Icons.book,
                tileKey: APP_TILE_VALUE['manual']!,
              ),
              const SizedBox(height: 10),
              AppDrawerTile(
                tileName: 'Logout',
                icon: Icons.power_settings_new_rounded,
                tileKey: APP_TILE_VALUE['logout']!,
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 350,
                height: 210,
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [
                //       Colors.black,
                //       APP_DRAWER_HEADER_COLOR.withAlpha(200),
                //     ],
                //   ),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 80,
                        child: Image.asset(
                          AssetUrls.KSHB_LOGO,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'KERALA STATE HOUSING BOARD',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
