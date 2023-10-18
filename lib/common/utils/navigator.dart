import 'package:flutter/material.dart';

class Navigation {
  static push(BuildContext context, String name) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      name,
      (Route<dynamic> route) => false,
    );
  }
}
