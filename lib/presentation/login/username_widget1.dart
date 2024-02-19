// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../application/login/login_bloc.dart';
import '../../../infrastructure/core/const/cache_const.dart';
import '../core/themes/theme_data.dart';

class UsernameWidget1 extends StatelessWidget {
  UsernameWidget1({
    Key? key,
    // required this.state,
    required this.loginData,
  }) : super(key: key);

  // LoginState state;
  Map<String, dynamic>? loginData;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: false,
      ),
      name: 'username',
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: 'Username',
        prefixIcon: Icon(
          Icons.person,
          color: ICON_COLOR,
        ),
        border: InputBorder.none,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(
          errorText: 'Username required',
        ),
        (String? value) {
          if (value != null && value.contains(' ') ||
              value!.contains('.') ||
              value.contains(',')) {
            return 'Only numbers allowed';
          }
          return null;
        },
        FormBuilderValidators.numeric(
          errorText: 'Only numbers allowed',
        ),
        FormBuilderValidators.minLength(
          4,
          errorText: 'Username should be more than 4 numbers!',
        ),
      ]),
      // initialValue: state.userName,
      initialValue: loginData![CacheConst.APP_USERNAME] ?? '',
    );
  }
}
