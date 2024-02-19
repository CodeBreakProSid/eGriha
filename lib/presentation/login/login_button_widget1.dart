// ignore_for_file: must_be_immutable

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../application/login/login_bloc.dart';
import '../core/const/ui_const.dart';
import '../core/global_widgets_fun/snackbar.dart';
import '../core/themes/theme_data.dart';
import '../main_page/screen_main_page.dart';
import 'screen_login1.dart';

class LoginButtonWidget1 extends StatelessWidget {
  LoginButtonWidget1({
    super.key,
    required this.loginFormKey,
    //required this.state,
    required this.context,
  });

  GlobalKey<FormBuilderState> loginFormKey;
  // LoginState state;
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          //Successful login route to home page
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ScreenMainPage()));
        } else if (state.hasError) {
          //Generating a snackbar error message
          showSnackBar(
            context: context,
            title: 'Whoops!!! 🤔',
            message: 'User name or password is "incorrect"!..',
            contentType: ContentType.failure,
          );
        }
      },
      child: MaterialButton(
        onPressed: () {
          //Login form field validation
          if (loginFormKey.currentState?.saveAndValidate() ?? false) {
            final String userName =
                (loginFormKey.currentState?.value['username'] ?? '').toString();

            final String password =
                (loginFormKey.currentState?.value['password'] ?? '').toString();
            final bool isRemember = isRememberCheckState.value;
            //Call event for on click login button
            BlocProvider.of<LoginBloc>(context).add(
              LoginButtonPressed(
                userName: userName,
                password: password,
                isChecked: isRemember,
              ),
            );
            // if (!state.isLoading) {
            //   BlocProvider.of<LoginBloc>(context).add(
            //     LoginButtonPressed(
            //       userName: userName,
            //       password: password,
            //       isChecked: isRemember,
            //     ),
            //   );
            // }
          }
        },
        height: LB_HEIGHT,
        color: LB_COLOR,
        shape: LB_BORDER,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return state.isLoading
                ? const SizedBox(
                    height: HEIGHT_20,
                    width: WIDTH_20,
                    child: CIRCULAR_PROGRESSING_INDICATOR,
                  )
                : Center(
                    child: Text(
                      "Login",
                      style: LB_TEXT_STYLE,
                    ),
                  );
          },
        ),
      ),
    );
  }
}
