import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../infrastructure/login/login_service_implementation.dart';
import '../core/themes/theme_data.dart';
import 'widgets/keltron_logo_widget.dart';
import 'widgets/kshb_logo_widget.dart';
import 'widgets/login_field_widget.dart';
import 'widgets/welcome_widget.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    //Creating global key for login form
    final loginFormKey = GlobalKey<FormBuilderState>();
    //Future builder that execute a function before UI render.
    return FutureBuilder<Map<String, dynamic>>(
      //A future function to get cached username & password
      future: LoginServiceImplementation().getDetailsFromCache(),
      builder: (
        BuildContext context,
        AsyncSnapshot<Map<String, dynamic>> snapshot,
      ) {
        //If the connection is on waiting display a progress
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        //If the function returns an error error will display
        else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        //Other wise display the login screen with cached info
        //if the the cache memory has value
        //else login screen without username and password.
        else {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            //FormBuilder to collect username and password.
            body: FormBuilder(
              key: loginFormKey,
              child: Container(
                decoration: LOGIN_PAGE_CONTAINER_DECOR,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
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
                            //state: state,
                            loginFormKey: loginFormKey,
                            context: context,
                            loginData: snapshot.data,
                          ),
                          //Screen height for seperation
                          L_HEIGHT40,
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
        }
      },
    );
  }
}
