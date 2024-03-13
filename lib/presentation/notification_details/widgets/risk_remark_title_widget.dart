import 'package:flutter/material.dart';

class RiskRemarkTitleWidget extends StatelessWidget {
  const RiskRemarkTitleWidget({
    super.key,
    required this.title,
    required this.titleSize,
    required this.titleWeight,
  });
  final String title;
  final FontWeight titleWeight;
  final double titleSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: titleWeight,
        fontSize: titleSize,
      ),
    );
  }
}
