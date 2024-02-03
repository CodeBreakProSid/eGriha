// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../screen_login.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Notifier for remember me chackbox option
        ValueListenableBuilder(
            valueListenable: isRememberCheckState,
            builder: (BuildContext context, bool newValue, Widget? _) {
              return Checkbox(
                //activeColor: PRIMARY_COLOR,
                value: isRememberCheckState.value,
                onChanged: (newCheckboxValue) {
                  isRememberCheckState.value = newCheckboxValue!;
                },
              );
            }),
        const Text(
          'Remember me',
          style: TextStyle(
            //color: SUB_TEXT_COLOR,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
