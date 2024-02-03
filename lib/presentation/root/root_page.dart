import 'package:flutter/material.dart';

import '../../infrastructure/core/global_services/token_services.dart';
import '../login/screen_login.dart';
import '../main_page/screen_main_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      // Check if the token is present in the cache
      future: checkTokenExists(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the token exists, navigate to the home page
          if (snapshot.data == true) {
            return ScreenMainPage();
          } else {
            // If the token doesn't exist, navigate to the login page
            return const ScreenLogin();
          }
        } else {
          // Show a loading indicator while checking the token
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Future<bool> checkTokenExists() async {
    return await TokenServies().isTokenExistOnCache();
  }
}
