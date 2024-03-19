import 'package:flutter/material.dart';

import '../../../domain/profile/model/profile.dart';
import '../../../infrastructure/core/module_services/officer_profile_services.dart';
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
      width: 250,
      child: ListView(
        shrinkWrap: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          FutureBuilder<Profile?>(
            future: OfficerProfileServices().getOfficerProfile(),
            builder: (BuildContext context, AsyncSnapshot<Profile?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(
                  strokeWidth: 2,
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final officerProfile = snapshot.data!;
                return DrawerHeader(
                  decoration: const BoxDecoration(
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
                        foregroundColor: APP_DRAWER_BACKGROUND_COLOR,
                        backgroundColor: APP_DRAWER_BACKGROUND_COLOR,
                        radius: 40,
                        child: officerProfile.thumbnails != null
                            ? CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                  officerProfile.thumbnails!,
                                ),
                              )
                            : const Icon(
                                Icons.person,
                                size: 50,
                                color: Colors.grey,
                              ),
                      ),
                      L_HEIGHT5,
                      Text(
                        officerProfile.fullName ?? 'Officer Name',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        officerProfile.username ?? 'User Name',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          L_HEIGHT15,
          AppDrawerTile(
            tileName: 'Home',
            icon: Icons.home,
            tileKey: APP_TILE_VALUE['home']!,
          ),
          L_HEIGHT10,
          AppDrawerTile(
            tileName: 'Profile',
            icon: Icons.person,
            tileKey: APP_TILE_VALUE['profile']!,
          ),
          L_HEIGHT10,
          AppDrawerTile(
            tileName: 'Projects',
            icon: Icons.home_work_outlined,
            tileKey: APP_TILE_VALUE['duties']!,
          ),
          L_HEIGHT10,
          AppDrawerTile(
            tileName: 'Contacts',
            icon: Icons.book,
            tileKey: APP_TILE_VALUE['contacts']!,
          ),
          L_HEIGHT10,
          AppDrawerTile(
            tileName: 'WebLink',
            icon: Icons.insert_link_sharp,
            tileKey: APP_TILE_VALUE['weblink']!,
          ),
          L_HEIGHT10,
          AppDrawerTile(
            tileName: 'Logout',
            icon: Icons.power_settings_new_rounded,
            tileKey: APP_TILE_VALUE['logout']!,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 40,
                      child: Image.asset(
                        AssetUrls.KSHB_LOGO,
                      ),
                    ),
                  ),
                  const Text(
                    'KERALA STATE HOUSING BOARD',
                    style: TextStyle(
                      fontFamily: 'Cormorant',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
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
