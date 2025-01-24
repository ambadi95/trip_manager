import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget screen, {bool replace = false}) {
  if (replace) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

void goBack(BuildContext context, {dynamic result}) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context, result);
  }
}
