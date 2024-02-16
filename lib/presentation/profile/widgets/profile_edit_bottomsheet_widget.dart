// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/const/ui_const.dart';

class ProfileEditBottomSheetWidget extends StatelessWidget {
  final ProfileState state;
  final String titleMessage;
  final int fieldType;
  final GlobalKey<FormBuilderState> profileFormKey;
  const ProfileEditBottomSheetWidget({
    Key? key,
    required this.state,
    required this.titleMessage,
    required this.fieldType,
    required this.profileFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    if (fieldType == PROFILE_FIELD['name'] ||
        fieldType == PROFILE_FIELD['phone'] ||
        fieldType == PROFILE_FIELD['email']) {
      if (fieldType == PROFILE_FIELD['name']) {
        controller.text = state.officerProfile!.fullName ?? '';
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );
      } else {
        if (fieldType == PROFILE_FIELD['phone']) {
          controller.text = state.officerProfile!.phoneNumber ?? '';
        } else {
          controller.text = state.officerProfile!.email ?? '';
        }
      }
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 25, 41, 33),
            ),
            padding: const EdgeInsets.all(16.0),
            child: FormBuilder(
              key: profileFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    titleMessage,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: FormBuilderTextField(
                          name: 'fieldName',
                          style: const TextStyle(color: Colors.white),
                          initialValue: controller.text,
                          validator: (value) {
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
                            if (fieldType == PROFILE_FIELD['email']) {
                              if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                              ).hasMatch(value as String)) {
                                return 'Please enter a valid email id';
                              }

                              return null;
                            }

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
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 126, 98),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          if (profileFormKey.currentState?.saveAndValidate() ??
                              false) {
                            final String updatedProfileData = (profileFormKey
                                        .currentState?.value['fieldName'] ??
                                    '')
                                .toString();

                            BlocProvider.of<ProfileBloc>(context).add(
                              ProfileEvent.profileUpdateOnclick(
                                profileData: updatedProfileData,
                                fieldType: fieldType,
                              ),
                            );
                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 126, 98),
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
    if (fieldType == PROFILE_FIELD['gender']) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 25, 41, 33),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  titleMessage,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      flex: 10,
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
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 3,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 126, 98),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextButton(
                        onPressed: () {
                          BlocProvider.of<ProfileBloc>(context).add(
                            ProfileEvent.profileUpdateOnclick(
                              profileData: profileGenderChangeNotifier.value,
                              fieldType: fieldType,
                            ),
                          );
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 126, 98),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      );
    }
    if (fieldType == PROFILE_FIELD['address']) {
      controller.text = state.officerProfile!.address ?? '';
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 25, 41, 33),
            ),
            padding: const EdgeInsets.all(16.0),
            child: FormBuilder(
              key: profileFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    titleMessage,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
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
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 126, 98),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                        onPressed: () {
                          if (profileFormKey.currentState?.saveAndValidate() ??
                              false) {
                            final String updatedProfileData = (profileFormKey
                                        .currentState?.value['fieldName'] ??
                                    '')
                                .toString();

                            BlocProvider.of<ProfileBloc>(context).add(
                              ProfileEvent.profileUpdateOnclick(
                                profileData: updatedProfileData,
                                fieldType: fieldType,
                              ),
                            );
                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 126, 98),
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
    } else {
      return Container(
        height: 200,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 25, 41, 33),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                  flex: 4,
                  child: Text(
                    titleMessage,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () async {
                      //TODO delete profile pic.
                    },
                    icon: Icon(
                      size: 25,
                      Icons.delete,
                      color: Colors.green.shade700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                "Take a picture",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
              onTap: () async {
                await _getImage(ImageSource.camera, context);
              },
            ),
            ListTile(
              title: const Text(
                "Choose from gallery",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.image,
                color: Colors.white,
              ),
              onTap: () async {
                await _getImage(ImageSource.gallery, context);
              },
            ),
          ],
        ),
      );
    }
  }

  Future<void> _getImage(ImageSource source, BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      XFile? uploadImages = pickedFile;

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
