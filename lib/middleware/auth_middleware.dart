import 'package:flutter/material.dart';
import 'package:meet_hub/services/window_manager_service.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class AuthMiddleware extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    super.didPush(route, previousRoute);

    // 获取SharedPreferences实例
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (route.settings.name != null) {
      WindowManagerService.initWidget(route.settings.name!);
      // WindowManagerService.initWidget(route.settings.name!);
    }
    // // 获取登录令牌
    // String? token = prefs.getString(Global.token);

    // // 判断当前页面是否需要进行令牌校验
    // if (!AppRoutes.routesWithoutLoginCheck.contains(route.settings.name)) {
    //   // 判断登录令牌是否过期
    //   bool isTokenExpired = await isExpired(token);

    //   // 令牌过期，跳转到登录页面
    //   if (isTokenExpired) {
    //     prefs.remove(Global.token);
    //     prefs.remove(Global.tokenExpires);
    //     prefs.remove(Global.userName);

    //     Navigation.push(route.navigator!.context, AppRoutes.welcomeLogin);
    //   }
    //   return;
    // }

    // // 判断是否登录页面，如果是在登录页面，则判断token信息，未过期则跳转
    // if (route.settings.name == AppRoutes.welcomeLogin) {
    //   bool isTokenExpired = await isExpired(token);
    //   if (!isTokenExpired) {
    //     Navigation.push(route.navigator!.context, AppRoutes.home);
    //   }
    // }
  }

  // // 判断令牌是否过期的方法，根据您的需求进行实现
  // Future<bool> isExpired(String? token) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int? tokenExpires = prefs.getInt(Global.tokenExpires);
  //   String? userName = prefs.getString(Global.userName);

  //   DateTime now = DateTime.now();
  //   int timestamp = now.millisecondsSinceEpoch;

  //   return token == null ||
  //       tokenExpires == null ||
  //       tokenExpires < timestamp ||
  //       userName == null;
  // }
}
