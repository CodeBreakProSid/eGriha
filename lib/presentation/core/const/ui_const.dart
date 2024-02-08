// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(1);
ValueNotifier<int?> profileGenderChangeNotifier = ValueNotifier(null);

Map<String, int> APP_TILE_VALUE = {
  'home': 1,
  'profile': 2,
  'duties': 3,
  'log': 4,
  'manual': 5,
  'logout': 6,
};

Map<String, int> PROFILE_FIELD = {
  'name': 1,
  'gender': 2,
  'phone': 3,
  'email': 4,
  'address': 5,
};

final Map<String, int> GENDER_TYPE = {
  'Male': 1,
  'Female': 2,
  'Transgender': 3,
};
