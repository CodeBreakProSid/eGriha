import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Happy to see you again !..😊",
      style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 18,
          fontWeight: FontWeight.bold),
    );
  }
}
