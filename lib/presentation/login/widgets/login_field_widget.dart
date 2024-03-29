// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../core/themes/theme_data.dart';
import 'login_button_widget.dart';
import 'password_widget.dart';
import 'rememberMe_widget.dart';
import 'username_widget.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({
    super.key,
    required this.loginFormKey,
    required this.context,
    required this.loginData,
  });

  // LoginState state;
  final BuildContext context;
  final GlobalKey<FormBuilderState> loginFormKey;
  final Map<String, dynamic>? loginData;

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
                      UsernameWidget(
                        loginData: loginData,
                      ),
                      PasswordWidget(
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
            LoginButtonWidget(
              loginFormKey: loginFormKey,
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
