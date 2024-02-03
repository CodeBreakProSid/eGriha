import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';

class KshbLogoWidget extends StatelessWidget {
  const KshbLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: Image.asset(
                'assets/kshb_logo.png',
                height: LOGO_HEIGHT,
                width: LOGO_WIDTH,
              ),
            ),
            const Text(
              "E-Griha",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 1000),
          child: Image.asset(
            'assets/building6.png',
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
