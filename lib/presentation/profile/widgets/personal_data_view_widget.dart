// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/const/ui_const.dart';
import 'profile_edit_bottomsheet_widget.dart';

class PersonalDataViewWidget extends StatelessWidget {
  PersonalDataViewWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  ProfileState state;

  @override
  Widget build(BuildContext context) {
    //Creating global key for login form
    final profileFormKey = GlobalKey<FormBuilderState>();
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
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
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.person,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            state.officerProfile!.fullName as String,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'This is not user name or pin. This name will be reflect against each DPR & DLR entry.',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
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
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () async {
                profileGenderChangeNotifier.value =
                    state.officerProfile!.gender;
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
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.person,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '${state.officerProfile!.genderName}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Gender editing option.',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
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
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () async {
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
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.phone,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            state.officerProfile!.phoneNumber as String,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Change your phone number.',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
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
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () async {
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
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.email,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            state.officerProfile!.email as String,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Change your email address.',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
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
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () async {
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
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.landscape,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            state.officerProfile!.address as String,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Change your residential address.',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
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
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
