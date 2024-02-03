import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../application/login/login_bloc.dart';
import '../core/global_widgets_fun/snackbar.dart';
import '../core/themes/theme_data.dart';
import '../main_page/screen_main_page.dart';
import 'widgets/keltron_logo_widget.dart';
import 'widgets/kshb_logo_widget.dart';
import 'widgets/login_field_widget.dart';
import 'widgets/welcome_widget.dart';

//Global value notifiers for password & remember me field
ValueNotifier<bool> passwordShowHide = ValueNotifier(false);
ValueNotifier<bool> isRememberCheckState = ValueNotifier(false);

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    //Call event for get officer username & password from cache
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<LoginBloc>(context).add(const GetSavedOfficerDetails());
    });

    //Creating global key for login form
    final loginFormKey = GlobalKey<FormBuilderState>();

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          //
          //Successful login route to home page
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ScreenMainPage()));
        } else if (state.hasError) {
          //
          //Genrating a snackbar error message
          showSnackBar(
            context: context,
            title: 'Whoops!!! 🤔',
            message: 'User name or password is "incorrect"!..',
            contentType: ContentType.failure,
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            // backgroundColor: Colors.white,
            body: FormBuilder(
              key: loginFormKey,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      BG_THEME_COLOR.shade900,
                      BG_THEME_COLOR.shade900,
                      BG_THEME_COLOR.shade800,
                      BG_THEME_COLOR.shade600,
                      BG_THEME_COLOR.shade500,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: LOGIN_PAGE_PADDING20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Keep height between safe area
                          L_HEIGHT20,
                          //KSHB Logo widgets
                          const KshbLogoWidget(),
                          //Screen height for seperation
                          L_HEIGHT40,
                          //Welcome text
                          const WelcomeWidget(),
                          //Screen height for seperation
                          L_HEIGHT10,
                          //Login credential container
                          LoginFieldWidget(
                            state: state,
                            loginFormKey: loginFormKey,
                            context: context,
                          ),
                          //Screen height for seperation
                          L_HEIGHT100,
                          //Keltron logo widget
                          const KeltronLogoWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
