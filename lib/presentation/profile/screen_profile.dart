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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProfileBloc>(context)
          .add(const ProfileEvent.getProfileScreenData());
    });
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Profile',
          widgets: const SizedBox(),
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          }
          if (state.hasError) {
            return const Center(
              child: Text(
                'Error while getting data',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          }
          if (state.officerProfile != null) {
            return ListView(
              children: [
                ProfilePicWidget(state: state),
                L_HEIGHT5,
                const PersonalInfoWidget(),
                L_HEIGHT5,
                PersonalDataViewWidget(state: state),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
      ),
    );
  }
}
