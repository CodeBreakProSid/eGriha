import 'package:flutter/material.dart';

import '../../core/const/ui_const.dart';
import '../../core/themes/theme_data.dart';
import 'quick_access_image_desc_widget.dart';

class QuickAccessListView extends StatelessWidget {
  const QuickAccessListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: LIST_ICON_TEXT_PADDING15,
          child: Row(
            children: [
              QuickAccessImageDescWidget(
                imageLink: 'assets/workdpr.png',
                optionTitle: 'DPR',
                menuKey: HOME_QUICK_LAUNCH_VALUE['dpr']!,
              ),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                  imageLink: 'assets/labourdlr.png',
                  optionTitle: 'DLR',
                  menuKey: HOME_QUICK_LAUNCH_VALUE['dlr']!),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                  imageLink: 'assets/risk.png',
                  optionTitle: 'Risk',
                  menuKey: HOME_QUICK_LAUNCH_VALUE['risk']!),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                  imageLink: 'assets/link.png',
                  optionTitle: 'Web lnk',
                  menuKey: HOME_QUICK_LAUNCH_VALUE['web']!),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                  imageLink: 'assets/contact.png',
                  optionTitle: 'Contacts',
                  menuKey: HOME_QUICK_LAUNCH_VALUE['contact']!),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                  imageLink: 'assets/usermanual.png',
                  optionTitle: 'Manual',
                  menuKey: HOME_QUICK_LAUNCH_VALUE['manual']!),
            ],
          ),
        )
      ],
    );
  }
}
