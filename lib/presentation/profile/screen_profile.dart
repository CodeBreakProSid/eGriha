import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/profile/profile_bloc.dart';
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
    //Get existing profile info from server through event calling
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProfileBloc>(context)
          .add(const ProfileEvent.getProfileScreenData());
    });
    //Profile UI design starts from here
    return Scaffold(
      //Callling global AppDrawer
      drawer: const AppDrawer(),
      //Calling global AppBar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Profile',
          widgets: const SizedBox(),
        ),
      ),
      //Present all the state values to the UI
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          //If the state value is loaging display progress
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          }
          //If the state value is error display error msg
          if (state.hasError) {
            return const Center(
              child: Text(
                'Error while getting data',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
          //If the state has the officer profile info display info
          if (state.officerProfile != null) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                //Profile picture widget
                ProfilePicWidget(state: state),
                L_HEIGHT5,
                //Partition widget between
                //Profile pic and personal info
                const PersonalInfoWidget(),
                L_HEIGHT5,
                //Profile Personal information widget
                PersonalDataViewWidget(state: state),
              ],
            );
          }
          //Any other event other than above will
          //display a progressing indicator.
          return const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        },
      ),
    );
  }
}
