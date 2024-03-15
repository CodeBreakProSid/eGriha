import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';

class HomeHeadingWidget extends StatelessWidget {
  final String headingTile;
  final String otherTile;
  const HomeHeadingWidget({
    super.key,
    required this.headingTile,
    required this.otherTile,
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
            flex: 4,
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
            flex: 1,
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
        ],
      ),
    );
  }
}
