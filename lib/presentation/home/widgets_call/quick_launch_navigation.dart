import 'package:flutter/material.dart';

import '../../contacts/screen_contacts.dart';
import '../../weblink/screen_weblink.dart';

Future<void> quickLaunchNavigation(BuildContext context, int tileValue) async {
  switch (tileValue) {
    case 1:
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ScreenMainPage(),
      //   ),
      // );
      break;
    case 2:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ScreenMainPage(),
      //   ),
      // );
      break;
    case 3:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ScreenMainPage(),
      //   ),
      // );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenWeblink(),
        ),
      );
      break;
    case 5:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenContacts(),
        ),
      );
      break;
    case 6:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const ScreenWeblink(),
      //   ),
      // );
      break;
    default:
  }
}
