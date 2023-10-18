import 'package:flutter/material.dart';
import 'package:meet_hub/common/utils/utils.dart';
import 'package:meet_hub/src/app/pages/desktop/home/index.dart';
import 'package:meet_hub/src/app/pages/desktop/login/index.dart';
import 'package:meet_hub/src/app/pages/mobile/home/index.dart';

class AppRoutes {
  static String home = '/home';
  static String login = '/login';

  // desktop路由
  static Map<String, Widget Function(BuildContext)> desktopRoutes = {
    home: (context) => const DesktopHomePage(),
    login: (context) => const DesktopLoginPage(),
  };

  // mobile路由
  static Map<String, Widget Function(BuildContext)> mobileRoutes = {
    home: (context) => const MobileHomePage(),
  };

  // 导出路由
  static Map<String, Widget Function(BuildContext)> routes = !Utils.isWeb && Utils.isApp ? mobileRoutes : desktopRoutes;

  // 无登录检查的路由
  static final List<String> routesWithoutLoginCheck = [
    home,
  ];
}
