// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/const/ui_const.dart';
import '../../core/themes/theme_data.dart';
import 'profile_edit_bottomsheet_widget.dart';

class PersonalDataViewWidget extends StatelessWidget {
  PersonalDataViewWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  ProfileState state;

  @override
  Widget build(BuildContext context) {
    //Creating global form builder key for
    //profile editing purpose.
    final profileFormKey = GlobalKey<FormBuilderState>();
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: P_START_ICON_COLOR,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: P_PERSONAL_INFO_HEADING,
                      ),
                      //Display the officer fullname from state.
                      Text(
                        state.officerProfile!.fullName as String,
                        style: P_PERSONAL_INFO_CONTENT,
                      ),
                      L_HEIGHT5,
                      Text(
                        'This is not user name or pin. This name will be reflect against each DPR & DLR entry.',
                        style: P_PERSONAL_INFO_TRAILING,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    //On button press editing
                    //option bottom sheet calling function.
                    onPressed: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        builder: (BuildContext context) {
                          return ProfileEditBottomSheetWidget(
                            titleMessage: 'Enter your name',
                            fieldType: PROFILE_FIELD['name'] as int,
                            state: state,
                            profileFormKey: profileFormKey,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: P_END_ICON_COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
          L_HEIGHT5,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: P_START_ICON_COLOR,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gender',
                        style: P_PERSONAL_INFO_HEADING,
                      ),
                      //Display the officer gender from state.
                      Text(
                        '${state.officerProfile!.genderName}',
                        style: P_PERSONAL_INFO_CONTENT,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Gender editing option.',
                        style: P_PERSONAL_INFO_TRAILING,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    //On button press editing
                    //option bottom sheet calling function.
                    onPressed: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        builder: (BuildContext context) {
                          return ProfileEditBottomSheetWidget(
                            titleMessage: 'Enter your gender',
                            fieldType: PROFILE_FIELD['gender'] as int,
                            state: state,
                            profileFormKey: profileFormKey,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: P_END_ICON_COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
          L_HEIGHT5,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.phone,
                    color: P_START_ICON_COLOR,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone',
                        style: P_PERSONAL_INFO_HEADING,
                      ),
                      //Display the officer phone from state.
                      Text(
                        state.officerProfile!.phoneNumber as String,
                        style: P_PERSONAL_INFO_CONTENT,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Change your phone number.',
                        style: P_PERSONAL_INFO_TRAILING,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    //On button press editing
                    //option bottom sheet calling function.
                    onPressed: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        builder: (BuildContext context) {
                          return ProfileEditBottomSheetWidget(
                            titleMessage: 'Enter your phone number',
                            fieldType: PROFILE_FIELD['phone'] as int,
                            state: state,
                            profileFormKey: profileFormKey,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: P_END_ICON_COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
          L_HEIGHT5,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.email,
                    color: P_START_ICON_COLOR,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: P_PERSONAL_INFO_HEADING,
                      ),
                      //Display the officer email from state.
                      Text(
                        state.officerProfile!.email as String,
                        style: P_PERSONAL_INFO_CONTENT,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Change your email address.',
                        style: P_PERSONAL_INFO_TRAILING,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    //On button press editing
                    //option bottom sheet calling function.
                    onPressed: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        builder: (BuildContext context) {
                          return ProfileEditBottomSheetWidget(
                            titleMessage: 'Enter your email',
                            fieldType: PROFILE_FIELD['email'] as int,
                            state: state,
                            profileFormKey: profileFormKey,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: P_END_ICON_COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
          L_HEIGHT5,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.landscape,
                    color: P_START_ICON_COLOR,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: P_PERSONAL_INFO_HEADING,
                      ),
                      Text(
                        state.officerProfile!.address as String,
                        style: P_PERSONAL_INFO_CONTENT,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Change your residential address.',
                        style: P_PERSONAL_INFO_TRAILING,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    //On button press editing
                    //option bottom sheet calling function.
                    onPressed: () async {
                      await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        builder: (BuildContext context) {
                          return ProfileEditBottomSheetWidget(
                            titleMessage: 'Enter your address',
                            fieldType: PROFILE_FIELD['address'] as int,
                            state: state,
                            profileFormKey: profileFormKey,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: P_END_ICON_COLOR,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
