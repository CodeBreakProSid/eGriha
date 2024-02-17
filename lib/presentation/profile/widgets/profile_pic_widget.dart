// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/asset_url/asset_url.dart';
import '../../core/const/ui_const.dart';
import 'profile_edit_bottomsheet_widget.dart';

class ProfilePicWidget extends StatelessWidget {
  ProfileState state;
  ProfilePicWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileFormKey = GlobalKey<FormBuilderState>();
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(10),
              //   topRight: Radius.circular(10),
              //   bottomLeft: Radius.circular(10),
              //   bottomRight: Radius.circular(10),
              // ),
              image: DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.2,
                image: AssetImage(
                  AssetUrls.KSHB_LOGO,
                ),
              ),
            ),
            child: Column(
              children: [
                //Profile pic and uploading new pic.
                GestureDetector(
                  //Function call for select profile pic
                  onTap: () async {
                    await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      builder: (BuildContext context) {
                        return ProfileEditBottomSheetWidget(
                          titleMessage: 'Select profile picture',
                          fieldType: PROFILE_FIELD['photo'] as int,
                          state: state,
                          profileFormKey: profileFormKey,
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: (state.officerProfile?.profilePicture == null ||
                            state.officerProfile?.profilePicture == '')
                        //If state don't have profile picture
                        //load default profile pic.
                        ? Stack(
                            children: [
                              const CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(
                                  AssetUrls.LOGO,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 100,
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
                                          titleMessage:
                                              'Select profile picture',
                                          fieldType:
                                              PROFILE_FIELD['photo'] as int,
                                          state: state,
                                          profileFormKey: profileFormKey,
                                        );
                                      },
                                    );
                                  },
                                  icon: const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 25,
                                    child: Icon(
                                      size: 35,
                                      Icons.camera_alt,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        //Else load profile pic from state.
                        : Stack(
                            children: [
                              CircleAvatar(
                                radius: 80,
                                child: ClipOval(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image.network(
                                    width: 300,
                                    height: 200,
                                    state.officerProfile!.profilePicture
                                        as String,
                                    fit: BoxFit.cover,
                                    //Loading progress circle while
                                    //loading the profile pic.
                                    loadingBuilder: (BuildContext _,
                                        Widget child,
                                        ImageChunkEvent? progres) {
                                      if (progres == null) {
                                        return child;
                                      } else {
                                        return const Center(
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        );
                                      }
                                    },
                                    //If internet service is not available
                                    //while loading profile pic,then UI will
                                    //replace with a default icon
                                    errorBuilder: (BuildContext _, Object obj,
                                        StackTrace? trace) {
                                      return const Center(
                                          child: Icon(Icons.wifi_off));
                                    },
                                  ),
                                ),
                              ),
                              //Camera icon for choose profile pic
                              Positioned(
                                bottom: 0,
                                left: 100,
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
                                          titleMessage:
                                              'Select profile picture',
                                          fieldType:
                                              PROFILE_FIELD['photo'] as int,
                                          state: state,
                                          profileFormKey: profileFormKey,
                                        );
                                      },
                                    );
                                  },
                                  icon: const CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 25,
                                    child: Icon(
                                      size: 35,
                                      Icons.camera_alt,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                //User id display on below Text field.
                Text(
                  'User ID : ${state.officerProfile!.username}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
