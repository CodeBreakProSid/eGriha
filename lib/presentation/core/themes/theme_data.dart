// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

//Colors used in App
//Login page
const BG_THEME_COLOR = Colors.blue;
Color ICON_COLOR = Colors.orange.shade700;
Color SHADOW_COLOR = const Color.fromRGBO(226, 130, 75, 0.729);
Color LB_COLOR = const Color.fromARGB(255, 26, 108, 202);
//APP DRAWER
const LIST_TILE_TEXT_COLOR = Color.fromARGB(255, 85, 83, 83);
const APP_DRAWER_BACKGROUND_COLOR = Colors.white;
const APP_DRAWER_HEADER_COLOR = Colors.orangeAccent;

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
const L_HEIGHT5 = SizedBox(height: 5);
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

//Padding
//App Drawer Icon
const EdgeInsets LIST_ICON_TEXT_PADDING = EdgeInsets.only(left: 20);

//Text Style
//App drawer
TextStyle APP_DRAWER_TEXT_STYLE = const TextStyle(
  color: LIST_TILE_TEXT_COLOR,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
//App Bar Styles
TextStyle APP_BAR_TEXT_STYLE = const TextStyle(
  fontSize: 26,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
