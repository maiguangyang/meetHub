import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void navigation(String name, {VoidCallback? callback}) {
  navigatorKey.currentState?.pushNamedAndRemoveUntil(
    name,
    (Route<dynamic> route) => false,
  );

  // 执行回调函数（如果存在）
  callback?.call();
}
