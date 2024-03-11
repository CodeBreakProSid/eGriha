// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/profile/profile_bloc.dart';
import '../core/global_widgets/app_drawer.dart';
import '../core/global_widgets/appbar_global.dart';
import '../core/global_widgets/appbar_icon_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Get existing profile info from server through event calling
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProfileBloc>(context)
          .add(const ProfileEvent.getProfileScreenData());
    });
    return Scaffold(
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
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
