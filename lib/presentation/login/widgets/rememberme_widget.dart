// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../core/const/ui_const.dart';
import '../../core/themes/theme_data.dart';

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
              activeColor: ICON_COLOR,
              value: isRememberCheckState.value,
              onChanged: (newCheckboxValue) {
                isRememberCheckState.value = newCheckboxValue!;
              },
            );
          },
        ),
        const Text(
          'Remember me',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
