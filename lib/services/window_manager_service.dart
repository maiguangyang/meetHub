import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'package:meet_hub/common/basics/global.dart';
import 'package:meet_hub/src/app/routes.dart';

class WindowManagerService {
    // 初始化窗口
  static void initWidget(String route) async {
    Size size = const Size(375, 670);
    Size minimumSize = size;
    Size maximumSize = size;
    bool resizable = false; // 是否允许拖动改变窗口大小
    bool minimizable = true; // 是否允许最小化窗口
    bool maximizable = false; // 是否允许最大化窗口
    bool preventClose = false; // 是否覆盖默认关闭处理程序

    // 登录窗口
    if (route == AppRoutes.login) {
      size = const Size(430, 280);
      minimumSize = size;
      maximumSize = size;
    } else if (route == AppRoutes.join) {
      minimizable = false;
      preventClose = true;
    } else if (route == AppRoutes.room) {
      resizable = true;
      maximizable = true;
      preventClose = true;
      size = const Size(960, 640);
      minimumSize = size;
      maximumSize = const Size(double.infinity, double.infinity);
    } else {
      Size size = const Size(375, 670);
      minimumSize = size;
      maximumSize = size;
    }

    WindowOptions windowOptions = WindowOptions(
      // center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.hidden,
      size: size,
    );

    await Global.windowManager?.waitUntilReadyToShow(windowOptions, () async {
      await Global.windowManager?.setResizable(resizable);
      await Global.windowManager?.setMinimizable(minimizable);
      await Global.windowManager?.setMaximizable(maximizable);
      await Global.windowManager?.setPreventClose(preventClose);

      await Global.windowManager?.setSize(size);
      await Global.windowManager?.setMinimumSize(minimumSize);
      await Global.windowManager?.setMaximumSize(maximumSize);
      await windowManager.show();
    });
  }
}