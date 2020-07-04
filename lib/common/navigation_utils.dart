import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usedcar2b/application.dart';
import 'package:usedcar2b/common/routers.dart';

class NavigatorUtils {
  ///登录页
  static goLoginTop(BuildContext context) {
    navigateTo(context, Routers.Login, replace: true, clearStack: true);
  }

  ///登录页
  static goLogin(BuildContext context, String mobile, String national) {
    navigateTo(
        context,
        Uri(
          path: Routers.Login,
        ).toString());
  }

  ///Page页面的容器，做一次通用自定义
  static Widget pageContainer(widget) {
    return MediaQuery(
        data: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .copyWith(textScaleFactor: 1),
        child: widget);
  }

  ///主页
  static goHome(BuildContext context) {
    navigateTo(context, Routers.Home, replace: true, clearStack: true);
  }

  static navigateTo(context, path,
      {bool replace = false,
      bool clearStack = false,
      TransitionType transition}) {
    print("path $path");
    return Application.router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transition: TransitionType.native);
  }
}
