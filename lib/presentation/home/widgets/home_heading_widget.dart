import 'package:egraha_app/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';

import '../../core/const/ui_const.dart';
import '../../core/themes/theme_data.dart';

class HomeHeadingWidget extends StatelessWidget {
  final String headingTile;
  final String otherTile;
  final int type;
  const HomeHeadingWidget({
    super.key,
    required this.headingTile,
    required this.otherTile,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              headingTile,
              style: const TextStyle(
                fontFamily: "Cormorant",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                shadowColor: Colors.white,
                elevation: 0,
              ),
              onPressed: () {
                if (type == 0) {
                } else {
                  indexChangeNotifier.value = 2;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenMainPage(),
                    ),
                  );
                }
              },
              child: Row(
                children: [
                  Text(
                    otherTile,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                    ),
                  ),
                  L_WIDTH5,
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.red,
                    size: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
