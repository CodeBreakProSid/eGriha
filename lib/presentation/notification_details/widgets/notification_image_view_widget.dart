import 'package:flutter/material.dart';

import '../../core/asset_url/asset_url.dart';

class NotificationImageViewWidget extends StatelessWidget {
  const NotificationImageViewWidget({
    super.key,
    required this.quarterHeight,
  });

  final double quarterHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: quarterHeight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetUrls.NOTIFICATION_LOGO),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
