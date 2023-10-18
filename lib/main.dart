
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:meet_hub/common/basics/global.dart';
import 'package:meet_hub/common/utils/utils.dart';
import 'package:meet_hub/src/app/app.dart';

void configLoading() {
  EasyLoading.instance
    ..userInteractions = false
    ..dismissOnTap = false;
}

void main(List<String> args) async {
  if (!Utils.isWeb && Utils.isDesktop) {
    WidgetsFlutterBinding.ensureInitialized();

    // 必须加上这一行。
    await windowManager.ensureInitialized();

    Global.windowManager = windowManager;
  }


  configLoading();

  runApp(const MyApp());

  // runApp(
  //   MultiProvider(
  //     providers: [],
  //     child: const MyApp(),
  //   ),
  // );
}
