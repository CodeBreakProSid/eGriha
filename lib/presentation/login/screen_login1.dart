import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../infrastructure/core/const/cache_const.dart';
import '../../infrastructure/login/login_service_implementation.dart';
import '../core/themes/theme_data.dart';
import 'login_field_widget1.dart';
import 'widgets/keltron_logo_widget.dart';
import 'widgets/kshb_logo_widget.dart';
import 'widgets/welcome_widget.dart';

//Global value notifiers for password field
//ValueNotifier<bool> passwordShowHide = ValueNotifier(false);
//Global value notifiers for remember me field
// ValueNotifier<bool> isRememberCheckState = ValueNotifier(false);

class ScreenLogin1 extends StatelessWidget {
  const ScreenLogin1({super.key});

  @override
  Widget build(BuildContext context) {
    //Creating global key for login form
    final loginFormKey = GlobalKey<FormBuilderState>();

    return FutureBuilder<Map<String, dynamic>>(
      future: LoginServiceImplementation().getDetailsFromCache(),
      builder:
          (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
        // if (snapshot.connectionState == ConnectionState.done) {
        //   if (snapshot.data != null) {
        //     if (snapshot.data![CacheConst.APP_USERNAME] != null &&
        //         snapshot.data![CacheConst.APP_PASSWORD] != null) {
        //       return Scaffold(
        //         resizeToAvoidBottomInset: false,
        //         //FormBuilder to collect username and password.
        //         body: FormBuilder(
        //           key: loginFormKey,
        //           child: Container(
        //             decoration: LOGIN_PAGE_CONTAINER_DECOR,
        //             child: Column(
        //               children: [
        //                 Padding(
        //                   padding: LOGIN_PAGE_PADDING20,
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       //Keep height between safe area
        //                       L_HEIGHT20,
        //                       //KSHB Logo widgets
        //                       const KshbLogoWidget(),
        //                       //Screen height for seperation
        //                       L_HEIGHT40,
        //                       //Welcome text
        //                       const WelcomeWidget(),
        //                       //Screen height for seperation
        //                       L_HEIGHT10,
        //                       //Login credential container
        //                       LoginFieldWidget1(
        //                         //state: state,
        //                         loginFormKey: loginFormKey,
        //                         context: context,
        //                         loginData: snapshot.data,
        //                       ),
        //                       //Screen height for seperation
        //                       L_HEIGHT100,
        //                       //Keltron logo widget
        //                       const KeltronLogoWidget(),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       );
        //     }

        //     return Scaffold(
        //       resizeToAvoidBottomInset: false,
        //       //FormBuilder to collect username and password.
        //       body: FormBuilder(
        //         key: loginFormKey,
        //         child: Container(
        //           decoration: LOGIN_PAGE_CONTAINER_DECOR,
        //           child: Column(
        //             children: [
        //               Padding(
        //                 padding: LOGIN_PAGE_PADDING20,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     //Keep height between safe area
        //                     L_HEIGHT20,
        //                     //KSHB Logo widgets
        //                     const KshbLogoWidget(),
        //                     //Screen height for seperation
        //                     L_HEIGHT40,
        //                     //Welcome text
        //                     const WelcomeWidget(),
        //                     //Screen height for seperation
        //                     L_HEIGHT10,
        //                     //Login credential container
        //                     LoginFieldWidget1(
        //                       //state: state,
        //                       loginFormKey: loginFormKey,
        //                       context: context,
        //                       loginData: snapshot.data,
        //                     ),
        //                     //Screen height for seperation
        //                     L_HEIGHT100,
        //                     //Keltron logo widget
        //                     const KeltronLogoWidget(),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     );
        //   } else {
        //     return const Scaffold(
        //       body: Center(
        //         child: Text('No Cached data'),
        //       ),
        //     );
        //   }
        // } else {
        //   // Show a loading indicator while checking the token
        //   return const Scaffold(
        //     body: Center(
        //       child: CIRCULAR_PROGRESSING_INDICATOR,
        //     ),
        //   );
        // }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            //FormBuilder to collect username and password.
            body: FormBuilder(
              key: loginFormKey,
              child: Container(
                decoration: LOGIN_PAGE_CONTAINER_DECOR,
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
                          LoginFieldWidget1(
                            //state: state,
                            loginFormKey: loginFormKey,
                            context: context,
                            loginData: snapshot.data,
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
        }
      },
    );
  }
}
