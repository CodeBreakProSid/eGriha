// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../application/login/login_bloc.dart';
import '../../core/themes/theme_data.dart';
import '../screen_login.dart';

class LoginButtonWidget extends StatelessWidget {
  LoginButtonWidget({
    super.key,
    required this.loginFormKey,
    required this.state,
    required this.context,
  });

  GlobalKey<FormBuilderState> loginFormKey;
  LoginState state;
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        //Login form field validation
        if (loginFormKey.currentState?.saveAndValidate() ?? false) {
          final String userName =
              (loginFormKey.currentState?.value['username'] ?? '').toString();

          final String password =
              (loginFormKey.currentState?.value['password'] ?? '').toString();
          final bool isRemember = isRememberCheckState.value;
          //Call event for on click login button
          if (!state.isLoading) {
            BlocProvider.of<LoginBloc>(context).add(
              LoginButtonPressed(
                userName: userName,
                password: password,
                isChecked: isRemember,
              ),
            );
          }
        }
      },
      height: LB_HEIGHT,
      color: LB_COLOR,
      shape: LB_BORDER,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return state.isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Center(
                  child: Text(
                    "Login",
                    style: LB_TEXT_STYLE,
                  ),
                );
        },
      ),
    );
  }
}
