import 'package:flutter/material.dart';

import 'quick_access_list_view.dart';

class QuickAccessWidget extends StatelessWidget {
  const QuickAccessWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 75,
      child: QuickAccessListView(),
    );
  }
}
