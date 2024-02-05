import 'package:flutter/material.dart';

import '../core/global_widgets/app_drawer.dart';
import '../core/global_widgets/appbar_global.dart';
import '../core/themes/theme_data.dart';
import 'widgets/personal_Info_widget.dart';
import 'widgets/personal_data_view_widget.dart';
import 'widgets/profile_pic_widget.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Profile',
          widgets: const SizedBox(),
        ),
      ),
      body: ListView(
        children: const [
          ProfilePicWidget(),
          L_HEIGHT5,
          PersonalInfoWidget(),
          L_HEIGHT5,
          PersonalDataViewWidget(),
        ],
      ),
    );
  }
}
