// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

//Colors used in App
//Login page
const BG_THEME_COLOR = Colors.blue;
Color ICON_COLOR = Colors.orange.shade700;
Color SHADOW_COLOR = const Color.fromRGBO(226, 130, 75, 0.729);
Color LB_COLOR = const Color.fromARGB(255, 26, 108, 202);

//Padding used in App
//Login page
const EdgeInsets LOGIN_PAGE_PADDING20 = EdgeInsets.all(20);

//Height & Width
//Login Page
const double LOGO_HEIGHT = 100;
const double LOGO_WIDTH = 130;
const double LB_HEIGHT = 50;

//Screen Spacing
//Login Page
const L_HEIGHT10 = SizedBox(height: 10);
const L_HEIGHT20 = SizedBox(height: 20);
const L_HEIGHT40 = SizedBox(height: 40);
const L_HEIGHT100 = SizedBox(height: 100);

//Borders & Radius
//Login page
ShapeBorder LB_BORDER = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(50),
);

//Text style
//Login Page
TextStyle LB_TEXT_STYLE = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);
