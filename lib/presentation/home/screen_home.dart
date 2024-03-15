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
import 'widgets/assigned_project_list_widget.dart';
import 'widgets/home_heading_widget.dart';
import 'widgets/home_image_poster_widget.dart';
import 'widgets/last_updated_project_widget.dart';
import 'widgets/quick_access_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Value notifier for image change.
    ValueNotifier<int> imageIndexChangeNotifier = ValueNotifier<int>(0);

    //Static poster images for home
    List<String> images = [
      "assets/home_poster1.jpg",
      "assets/home_poster2.jpg",
      "assets/home_poster3.jpg",
      "assets/hb.jpg",
    ];

    //Timer function to change the image poster on particular interval
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
      //Global app drawer call.
      drawer: const AppDrawer(),
      //Global app bar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Home',
          widgets: AppBarIconWidgetList(
            iconData: Icons.notifications,
          ),
        ),
      ),
      //Body design for home page
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          L_HEIGHT10,
          //Top quick access widget
          const QuickAccessWidget(),
          L_HEIGHT10,
          //Home image poster widget
          HomeImagePosterWidget(
            imageIndexChangeNotifier: imageIndexChangeNotifier,
            images: images,
          ),
          L_HEIGHT10,
          //Heading widget
          const HomeHeadingWidget(
            headingTile: 'Last Updated',
            otherTile: 'See Info',
          ),
          L_HEIGHT10,
          //Last updated project widget
          const LastUpdatedProjectWidget(),
          L_HEIGHT10,
          //Heading widget
          const HomeHeadingWidget(
            headingTile: 'Assigned Projects',
            otherTile: 'See All',
          ),
          L_HEIGHT10,
          //Assigned project list widget
          const AssignedProjectListWidget(),
          L_HEIGHT10,
        ],
      ),
    );
  }
}
