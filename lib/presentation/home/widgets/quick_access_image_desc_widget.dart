import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';
import '../../notification_details/widgets/risk_remark_title_widget.dart';

class QuickAccessImageDescWidget extends StatelessWidget {
  final String imageLink;
  final String optionTitle;
  const QuickAccessImageDescWidget({
    super.key,
    required this.imageLink,
    required this.optionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageLink),
            ),
          ),
        ),
        L_HEIGHT5,
        RiskRemarkTitleWidget(
          title: optionTitle,
          titleSize: 12,
          titleWeight: FontWeight.normal,
        ),
      ],
    );
  }
}
