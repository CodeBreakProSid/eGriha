import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required String title,
  required String message,
  required ContentType contentType,
}) {
  final snackBar = SnackBar(
    dismissDirection: DismissDirection.horizontal,
    elevation: 0,
    width: double.infinity,
    duration: const Duration(seconds: 4),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    // content: Text(message),
    content: AwesomeSnackbarContent(
      title: title,
      titleFontSize: 30,
      message: message,
      contentType: contentType,
      inMaterialBanner: false,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
