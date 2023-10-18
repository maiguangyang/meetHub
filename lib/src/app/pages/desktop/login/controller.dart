
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:meet_hub/common/utils/navigator.dart';
import 'package:meet_hub/src/app/routes.dart';
import './index.dart';

class DesktopLoginController extends State<DesktopLoginPage> {
  final double count = 0;

  void handleTestToast() {
    navigation(AppRoutes.home);
  }

  @override
  Widget build(BuildContext context) => DesktopLoginWidget(this);
}

