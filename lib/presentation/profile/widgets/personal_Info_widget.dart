// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, file_names
import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //A seperating widget from profile pic
    //to personal info in profile screen
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          color: APP_DRAWER_HEADER_COLOR,
          borderRadius: P_CONTAINER_RADIUS,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Personal Info',
              style: P_PERSONAL_INFO,
            ),
          ],
        ),
      ),
    );
  }
}
