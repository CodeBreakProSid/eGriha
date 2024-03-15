import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';
import '../../notification_details/widgets/risk_remark_title_widget.dart';
import '../widgets_call/quick_launch_navigation.dart';

class QuickAccessImageDescWidget extends StatelessWidget {
  final String imageLink;
  final String optionTitle;
  final int menuKey;
  const QuickAccessImageDescWidget({
    super.key,
    required this.imageLink,
    required this.optionTitle,
    required this.menuKey,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        quickLaunchNavigation(context, menuKey);
      },
      child: Column(
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
      ),
    );
  }
}
