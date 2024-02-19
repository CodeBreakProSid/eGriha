// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../application/login/login_bloc.dart';
import '../core/themes/theme_data.dart';
import 'login_button_widget1.dart';
import 'password_widget1.dart';
import 'username_widget1.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/rememberMe_widget.dart';

class LoginFieldWidget1 extends StatelessWidget {
  LoginFieldWidget1({
    super.key,
    // required this.state,
    required this.loginFormKey,
    required this.context,
    required this.loginData,
  });

  // LoginState state;
  BuildContext context;
  GlobalKey<FormBuilderState> loginFormKey;
  Map<String, dynamic>? loginData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Screen height for seperation
            L_HEIGHT20,
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: SHADOW_COLOR,
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      UsernameWidget1(
                        // state: state,
                        loginData: loginData,
                      ),
                      PasswordWidget1(
                        //state: state,
                        loginData: loginData,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Screen height for seperation
            L_HEIGHT20,
            //Remember me widget
            const RememberMeWidget(),
            //Screen height for seperation
            L_HEIGHT20,
            //Login button widget
            LoginButtonWidget1(
              loginFormKey: loginFormKey,
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
