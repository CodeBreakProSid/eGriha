// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../../../infrastructure/core/module_services/auth_services.dart';
import '../../contacts/screen_contacts.dart';
import '../../login/screen_login.dart';
import '../../main_page/screen_main_page.dart';
import '../../weblink/screen_weblink.dart';
import '../const/ui_const.dart';

Future<void> appDrawerNavigation(BuildContext context, int tileValue) async {
  switch (tileValue) {
    case 1:
      indexChangeNotifier.value = 1;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenMainPage(),
        ),
      );
      break;
    case 2:
      indexChangeNotifier.value = 0;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenMainPage(),
        ),
      );
      break;
    case 3:
      indexChangeNotifier.value = 2;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenMainPage(),
        ),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenContacts(),
        ),
      );
      break;
    case 5:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenWeblink(),
        ),
      );
      break;
    case 6:
      //Need to call token deleting function
      await AuthServices.logoutApiCall();
      isRememberCheckState.value = false;
      passwordShowHide.value = false;
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const ScreenLogin()));
      break;
    default:
  }
}
