// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

//Colors used in App
//Login page
const BG_THEME_COLOR = Colors.blue;
Color ICON_COLOR = Colors.orange.shade700;
Color SHADOW_COLOR = const Color.fromARGB(184, 88, 83, 80);
Color LB_COLOR = const Color.fromARGB(255, 26, 108, 202);
//APP DRAWER
const LIST_TILE_TEXT_COLOR = Color.fromARGB(255, 85, 83, 83);
const APP_DRAWER_BACKGROUND_COLOR = Colors.white;
const APP_DRAWER_HEADER_COLOR = Colors.orangeAccent;

//Padding used in App
//Login page
const EdgeInsets LOGIN_PAGE_PADDING20 = EdgeInsets.all(20);
const EdgeInsets PADDING5 = EdgeInsets.all(5);
const EdgeInsets PADDING8 = EdgeInsets.all(8);

//Height & Width
//Login Page
const double LOGO_HEIGHT = 100;
const double LOGO_WIDTH = 130;
const double LB_HEIGHT = 50;
const double WIDTH_20 = 20;
const double HEIGHT_20 = 20;

//Login page container decoration.
Decoration LOGIN_PAGE_CONTAINER_DECOR = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      BG_THEME_COLOR.shade900,
      BG_THEME_COLOR.shade900,
      BG_THEME_COLOR.shade800,
      BG_THEME_COLOR.shade600,
      BG_THEME_COLOR.shade500,
    ],
  ),
);

//Screen Spacing
const L_HEIGHT5 = SizedBox(height: 5);
const L_HEIGHT8 = SizedBox(height: 8);
const L_HEIGHT10 = SizedBox(height: 10);
const L_HEIGHT15 = SizedBox(height: 15);
const L_HEIGHT20 = SizedBox(height: 20);
const L_HEIGHT25 = SizedBox(height: 25);
const L_HEIGHT30 = SizedBox(height: 30);
const L_HEIGHT40 = SizedBox(height: 40);
const L_HEIGHT100 = SizedBox(height: 100);

const L_WIDTH5 = SizedBox(width: 5);
const L_WIDTH10 = SizedBox(width: 10);
const L_WIDTH20 = SizedBox(width: 20);
const L_WIDTH30 = SizedBox(width: 30);
const L_WIDTH40 = SizedBox(width: 40);
const L_WIDTH50 = SizedBox(width: 50);

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
const EdgeInsets LIST_ICON_TEXT_PADDING20 = EdgeInsets.only(left: 20);
const EdgeInsets LIST_ICON_TEXT_PADDING15 = EdgeInsets.only(left: 15);

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

//Profile module theme
//Container borderRadius

BorderRadiusGeometry P_CONTAINER_RADIUS = const BorderRadius.only(
  topLeft: Radius.circular(10),
  topRight: Radius.circular(10),
  bottomLeft: Radius.circular(10),
  bottomRight: Radius.circular(10),
);

List<BoxShadow> CONTAINER_SHADOW = const [
  BoxShadow(
    color: Colors.black38,
    spreadRadius: 1,
    blurRadius: 2,
    offset: Offset(0, 1),
  ),
];

//Text style for Personal info widget
TextStyle P_PERSONAL_INFO = const TextStyle(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

TextStyle P_PERSONAL_INFO_HEADING = TextStyle(
  color: Colors.grey.shade600,
  fontSize: 15,
);

TextStyle P_PERSONAL_INFO_CONTENT = const TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

TextStyle P_PERSONAL_INFO_TRAILING = TextStyle(
  color: Colors.grey.shade600,
  fontSize: 11,
  fontWeight: FontWeight.bold,
);

//Colors in Profile

Color P_START_ICON_COLOR = Colors.grey.shade600;
Color P_END_ICON_COLOR = Colors.green.shade700;
Color P_BUTTON_COLOR = const Color.fromARGB(255, 16, 126, 98);
Color P_EDITING_CONTAINER_COLOR = const Color.fromARGB(255, 25, 41, 33);

//Profile bottom sheet Text style

TextStyle P_BOTTOMSHEET_TEXT_STYLE = const TextStyle(
  color: Colors.white,
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

const Widget CIRCULAR_PROGRESSING_INDICATOR = CircularProgressIndicator(
  strokeWidth: 2,
);

const Widget DIVIDER_WIDGET = Divider(
  thickness: 2,
  color: Color.fromARGB(255, 214, 214, 214),
);
