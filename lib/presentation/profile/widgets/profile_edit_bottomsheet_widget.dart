// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../infrastructure/core/global_services/image_upload_services.dart';
import '../../core/const/ui_const.dart';
import '../../core/global_widgets_fun/snackbar.dart';
import '../../core/themes/theme_data.dart';

class ProfileEditBottomSheetWidget extends StatelessWidget {
  const ProfileEditBottomSheetWidget({
    Key? key,
    required this.state,
    required this.titleMessage,
    required this.fieldType,
    required this.profileFormKey,
  }) : super(key: key);

  final int fieldType;
  final GlobalKey<FormBuilderState> profileFormKey;
  final ProfileState state;
  final String titleMessage;

  Future<void> _getImage(ImageSource source, BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      XFile? uploadImages = pickedFile;

      if (!context.mounted) {
        return;
      } else {
        BlocProvider.of<ProfileBloc>(context).add(
          ProfileEvent.profileUpdateOnclick(
            profileData: uploadImages,
            fieldType: fieldType,
          ),
        );
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    //Created text editing controller
    //to handle inputing info in the field.
    TextEditingController controller = TextEditingController();
    //Check the selected profile editing
    //option is name, phone or email.
    if (fieldType == PROFILE_FIELD['name'] ||
        fieldType == PROFILE_FIELD['phone'] ||
        fieldType == PROFILE_FIELD['email']) {
      //Check the user want to change the fullname.
      if (fieldType == PROFILE_FIELD['name']) {
        //Load the current full name on
        //the text field before changing.
        controller.text = state.officerProfile!.fullName ?? '';
        //Set the cursor position to the end of current name.
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );
      } else {
        //Check the user want to change the phone number.
        if (fieldType == PROFILE_FIELD['phone']) {
          //Load the current phone number on
          //the text field before changing.
          controller.text = state.officerProfile!.phoneNumber ?? '';
        }
        //Else the user wants to change the email address
        else {
          //Load the current email address on
          //the text field before changing.
          controller.text = state.officerProfile!.email ?? '';
        }
      }
      //If the user wants to change the name, phone nnumber, or email
      //the below same bottomsheet will opens with different validation.
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: P_EDITING_CONTAINER_COLOR,
            ),
            padding: const EdgeInsets.all(16.0),
            //Formbuilder for collecting info from formfield
            child: FormBuilder(
              key: profileFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    titleMessage,
                    style: P_BOTTOMSHEET_TEXT_STYLE,
                  ),
                  L_HEIGHT15,
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        //Common input field for name,phone number and email.
                        child: FormBuilderTextField(
                          name: 'fieldName',
                          style: const TextStyle(color: Colors.white),
                          initialValue: controller.text,
                          validator: (value) {
                            //Input validation for phone number
                            if (fieldType == PROFILE_FIELD['phone']) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your mobile number';
                              } else if (!RegExp(
                                r'(^(?:[+0]9)?[0-9]{10}$)',
                              ).hasMatch(value)) {
                                return 'Please enter valid mobile number';
                              }

                              return null;
                            }
                            //Input validation for email
                            if (fieldType == PROFILE_FIELD['email']) {
                              if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                              ).hasMatch(value as String)) {
                                return 'Please enter a valid email id';
                              }

                              return null;
                            }
                            //No validation for name
                            return null;
                          },
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          '😊',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                  L_HEIGHT20,
                  //Action button like save & cancel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        //Go back to the previous screen
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: P_BUTTON_COLOR,
                          ),
                        ),
                      ),
                      L_HEIGHT20,
                      TextButton(
                        onPressed: () {
                          //Check the form validation
                          if (profileFormKey.currentState?.saveAndValidate() ??
                              false) {
                            //Take the edited field value(Name, Phone number, or email)
                            final String updatedProfileData = (profileFormKey
                                        .currentState?.value['fieldName'] ??
                                    '')
                                .toString();
                            //Calls the ProfileUpdateOnclick enevt with data that
                            //collected from the UI.
                            BlocProvider.of<ProfileBloc>(context).add(
                              ProfileEvent.profileUpdateOnclick(
                                profileData: updatedProfileData,
                                fieldType: fieldType,
                              ),
                            );
                            //Go back to the previous screen
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: P_BUTTON_COLOR,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
    //Check the user tries to change the gender.
    if (fieldType == PROFILE_FIELD['gender']) {
      //A value notifier defined to monitor the gender field in the
      //ui_const file, when user tries to change the gender
      //the notifier value will updated with the existing user gender
      profileGenderChangeNotifier.value = state.officerProfile!.gender;
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: P_EDITING_CONTAINER_COLOR,
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  titleMessage,
                  style: P_BOTTOMSHEET_TEXT_STYLE,
                ),
                L_HEIGHT15,
                Row(
                  children: [
                    //Dropdown widget for gender.
                    Expanded(
                      flex: 10,
                      //ValueListenableBuilder implementation for gender change
                      child: ValueListenableBuilder(
                        valueListenable: profileGenderChangeNotifier,
                        builder:
                            (BuildContext context, int? newValue, Widget? _) {
                          return DropdownButton(
                            value: newValue,
                            underline: Container(
                              height: 0,
                              color: Colors.transparent,
                            ),
                            dropdownColor:
                                const Color.fromARGB(255, 25, 41, 33),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            items: GENDER_TYPE.entries
                                .map((gender) => DropdownMenuItem(
                                      value: gender.value,
                                      child: Text(gender.key),
                                    ))
                                .toList(),
                            onChanged: (newGender) {
                              profileGenderChangeNotifier.value = newGender;
                            },
                          );
                        },
                      ),
                    ),
                    L_HEIGHT20,
                    Expanded(
                      flex: 3,
                      child: TextButton(
                        //Just go back to previous screen when click the cancel
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: P_BUTTON_COLOR,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextButton(
                        //Calls the ProfileUpdateOnclick enevt with data that
                        //collected from the UI.
                        onPressed: () {
                          BlocProvider.of<ProfileBloc>(context).add(
                            ProfileEvent.profileUpdateOnclick(
                              profileData: profileGenderChangeNotifier.value,
                              fieldType: fieldType,
                            ),
                          );
                          //Go back to the previous stacked screen.
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: P_BUTTON_COLOR,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                L_HEIGHT40,
              ],
            ),
          ),
        ),
      );
    }
    //Check the user tries to change the address.
    if (fieldType == PROFILE_FIELD['address']) {
      //Load the current address on
      //the text field before changing.
      controller.text = state.officerProfile!.address ?? '';
      //Set the cursor position to the end of current address.
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: P_EDITING_CONTAINER_COLOR,
            ),
            padding: const EdgeInsets.all(16.0),
            //Formbuilder for collecting info from formfield
            child: FormBuilder(
              key: profileFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    titleMessage,
                    style: P_BOTTOMSHEET_TEXT_STYLE,
                  ),
                  L_HEIGHT15,
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        //Form field to collect address info
                        child: FormBuilderTextField(
                          name: 'fieldName',
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          style: const TextStyle(color: Colors.white),
                          initialValue: controller.text,
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          '😊',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                  L_HEIGHT20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        //Go to back to stacked screen.
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: P_BUTTON_COLOR,
                          ),
                        ),
                      ),
                      L_WIDTH20,
                      TextButton(
                        onPressed: () {
                          //Validation process of the form
                          if (profileFormKey.currentState?.saveAndValidate() ??
                              false) {
                            //Data collected from the field for editing.
                            final String updatedProfileData = (profileFormKey
                                        .currentState?.value['fieldName'] ??
                                    '')
                                .toString();
                            //Calls the ProfileUpdateOnclick enevt with data that
                            //collected from the UI.
                            BlocProvider.of<ProfileBloc>(context).add(
                              ProfileEvent.profileUpdateOnclick(
                                profileData: updatedProfileData,
                                fieldType: fieldType,
                              ),
                            );
                            Navigator.of(context).pop();
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: P_BUTTON_COLOR,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
    //Else user tries to change the profile picture.
    else {
      return Container(
        height: 200,
        decoration: BoxDecoration(
          color: P_EDITING_CONTAINER_COLOR,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            L_HEIGHT10,
            Row(
              children: [
                L_WIDTH20,
                Expanded(
                  flex: 4,
                  child: Text(
                    titleMessage,
                    style: P_BOTTOMSHEET_TEXT_STYLE,
                  ),
                ),
                L_WIDTH50,
                Expanded(
                  flex: 1,
                  child: IconButton(
                    //Delete the existing profile picture.
                    //After deleting a default keltron image will load.
                    onPressed: () async {
                      //Calls the ProfileUpdateOnclick enevt with
                      //null value that collected from the UI.
                      BlocProvider.of<ProfileBloc>(context).add(
                        ProfileEvent.profileUpdateOnclick(
                          profileData: null,
                          fieldType: fieldType,
                        ),
                      );
                    },
                    icon: Icon(
                      size: 25,
                      Icons.delete,
                      color: P_END_ICON_COLOR,
                    ),
                  ),
                ),
              ],
            ),
            L_HEIGHT10,
            //Upload image from camera widget
            ListTile(
              title: const Text(
                "Take a picture",
                style: TextStyle(
                  color: APP_DRAWER_BACKGROUND_COLOR,
                ),
              ),
              leading: const Icon(
                Icons.camera,
                color: APP_DRAWER_BACKGROUND_COLOR,
              ),
              onTap: () async {
                await _getImage(ImageSource.camera, context);
              },
            ),
            //Upload image from gallery widget
            ListTile(
              title: const Text(
                "Choose from gallery",
                style: TextStyle(
                  color: APP_DRAWER_BACKGROUND_COLOR,
                ),
              ),
              leading: const Icon(
                Icons.image,
                color: APP_DRAWER_BACKGROUND_COLOR,
              ),
              onTap: () async {
                final XFile? tempImage = await ImageUploadServices()
                    .uploadImage(ImageSource.gallery);
                if (tempImage != null) {
                  if (!context.mounted) {
                    return;
                  } else {
                    BlocProvider.of<ProfileBloc>(context).add(
                      ProfileEvent.profileUpdateOnclick(
                        profileData: tempImage,
                        fieldType: fieldType,
                      ),
                    );
                    Navigator.pop(context);
                  }
                } else {
                  if (!context.mounted) {
                    return;
                  } else {
                    showSnackBar(
                      context: context,
                      title: 'Whoops!!! 🤔',
                      message: 'Invalid Image format!.. Choose JPEG/JPG file',
                      contentType: ContentType.failure,
                    );
                    Navigator.pop(context);
                  }
                }
              },
            ),
          ],
        ),
      );
    }
  }
}
