import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:usedcar2b/common/dao/user_dao.dart';
import 'package:usedcar2b/common/navigation_utils.dart';

//欢迎页面，主要做三件事请，第一权限申请 第二判断是否登录 第三版本更新
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    _getPermission(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    new Future.delayed(const Duration(seconds: 4, milliseconds: 500), () {
      UserDao.initUserInfo().then((res) {
        if (res != null && res.sellertoken != null) {
          NavigatorUtils.goHome(context);
        } else {
          NavigatorUtils.goLoginTop(context);
        }
        return true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("resource/images/bg_splash.png"),
                fit: BoxFit.cover)),
      ),
    );
  }

  void _getPermission(BuildContext context) async {
    final PermissionHandler _permissionHandler = PermissionHandler();
    var result = await _permissionHandler
        .requestPermissions([PermissionGroup.location, PermissionGroup.phone]);

    if (result[PermissionGroup.location] == PermissionStatus.granted &&
        result[PermissionGroup.phone] == PermissionStatus.granted) {
      //判断是否已经登录

    } else if (result[PermissionGroup.location] == PermissionStatus.denied) {
      // Common.showAlertDialogPermission(context, "You need accepted permission for access maps");
    }
  }
}
