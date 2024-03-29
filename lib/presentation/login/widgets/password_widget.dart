// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../infrastructure/core/const/cache_const.dart';
import '../../core/const/ui_const.dart';
import '../../core/themes/theme_data.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key? key,
    required this.loginData,
  }) : super(key: key);

  final Map<String, dynamic>? loginData;

  @override
  Widget build(BuildContext context) {
    //Notifier for password show/hide option
    return ValueListenableBuilder(
      valueListenable: passwordShowHide,
      builder: (BuildContext context, bool newValue, Widget? _) {
        return FormBuilderTextField(
          name: 'password',
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.key,
              color: ICON_COLOR,
            ),
            labelText: 'Password',
            border: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: () {
                if (passwordShowHide.value == true) {
                  passwordShowHide.value = false;
                } else {
                  passwordShowHide.value = true;
                }
              },
              icon: Icon(
                passwordShowHide.value
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: ICON_COLOR,
              ),
              splashRadius: 20,
            ),
          ),
          obscureText: !passwordShowHide.value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: FormBuilderValidators.required(
            errorText: 'Password required',
          ),
          initialValue: loginData![CacheConst.APP_PASSWORD] ?? '',
        );
      },
    );
  }
}
