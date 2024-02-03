import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class KeltronLogoWidget extends StatelessWidget {
  const KeltronLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Developed by KELTRON',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          FadeInUp(
            duration: const Duration(milliseconds: 2000),
            child: Image.asset(
              'assets/kel_logo.png',
              height: 80,
              width: 80,
            ),
          )
        ],
      ),
    );
  }
}
