import 'package:flutter/material.dart';

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
      children: const [
        Padding(
          padding: LIST_ICON_TEXT_PADDING15,
          child: Row(
            children: [
              QuickAccessImageDescWidget(
                imageLink: 'assets/workdpr.png',
                optionTitle: 'DPR',
              ),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                imageLink: 'assets/labourdlr.png',
                optionTitle: 'DLR',
              ),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                imageLink: 'assets/risk.png',
                optionTitle: 'Risk',
              ),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                imageLink: 'assets/link.png',
                optionTitle: 'Web lnk',
              ),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                imageLink: 'assets/contact.png',
                optionTitle: 'Contacts',
              ),
              L_WIDTH50,
              QuickAccessImageDescWidget(
                imageLink: 'assets/usermanual.png',
                optionTitle: 'Manual',
              ),
            ],
          ),
        )
      ],
    );
  }
}
