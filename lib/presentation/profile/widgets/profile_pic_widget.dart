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
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.2,
                image: AssetImage(
                  AssetUrls.KSHB_LOGO,
                ),
              ),
            ),
            child: Column(
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
                        ? const CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage(
                              AssetUrls.LOGO,
                            ),
                          )
                        : Stack(
                            children: [
                              CircleAvatar(
                                radius: 80,
                                child: ClipOval(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image.network(
                                    width: 200,
                                    height: 200,
                                    state.officerProfile!.profilePicture
                                        as String,
                                    fit: BoxFit.cover,
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
                                    errorBuilder: (BuildContext _, Object obj,
                                        StackTrace? trace) {
                                      return const Center(
                                          child: Icon(Icons.wifi));
                                    },
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 110,
                                right: 0,
                                top: 100,
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
                                  icon: const Icon(
                                    size: 40,
                                    Icons.camera_alt,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'User ID :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      state.officerProfile!.username as String,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
