import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:meet_hub/common/utils/navigator.dart';
import 'package:meet_hub/middleware/auth_middleware.dart';
import 'package:meet_hub/src/app/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final AuthMiddleware authMiddleware = AuthMiddleware();

    return MaterialApp(
      title: 'meet_hub',
      navigatorKey: navigatorKey,
      initialRoute: AppRoutes.home,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        cupertinoOverrideTheme:
            const CupertinoThemeData(brightness: Brightness.light),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.macOS: NoTransitionPageTransitionsBuilder(),
          },
        ),
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: const MaterialColor(
          0xdd006fff,
          <int, Color>{
            50: Color(0xdd006fff),
            100: Color(0xdd006fff),
            200: Color(0xdd006fff),
            300: Color(0xdd006fff),
            400: Color(0xdd006fff),
            500: Color(0xdd006fff),
            600: Color(0xdd006fff),
            700: Color(0xdd006fff),
            800: Color(0xdd006fff),
            900: Color(0xdd006fff),
          },
        )).copyWith(background: Colors.transparent),
      ),
      builder: EasyLoading.init(),
      routes: AppRoutes.routes,
      navigatorObservers: [authMiddleware],
    );
  }
}

// 重写路由跳转的动画
class NoTransitionPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionPageTransitionsBuilder();

  @override
  Widget buildTransitions<String>(
    PageRoute route,
    BuildContext context,
    Animation animation,
    Animation secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
