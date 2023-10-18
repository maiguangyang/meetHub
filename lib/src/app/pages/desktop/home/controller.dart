import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:meet_hub/common/utils/navigator.dart';
import 'package:meet_hub/src/app/routes.dart';
import './index.dart';

class DesktopHomeController extends StatelessWidget {
  const DesktopHomeController({super.key});

  final double count = 10;

  void handleTestToast() {
    navigation(AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) => const DesktopHomeWidget();
}