import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:usedcar2b/common/config/keys.dart';
import 'package:usedcar2b/common/dao/user_dao.dart';
import 'package:usedcar2b/common/dao/user_info.dart';
import 'package:usedcar2b/common/local/local_storage.dart';
import 'package:usedcar2b/common/navigation_utils.dart';
import 'package:usedcar2b/network/address.dart';
import 'package:usedcar2b/network/netservice.dart';
import 'package:usedcar2b/network/result_data.dart';
import 'package:usedcar2b/widgets/password_input.dart';
import 'package:usedcar2b/widgets/press_button.dart';
import 'package:usedcar2b/widgets/username_input.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.topLeft,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Image.asset("resource/images/bg_login.png"),
                new Image.asset("resource/images/login_logo.png", width: 200)
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              child: UserNameInputText(controller: userNameInputController),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              child: PasswordInputText(controller: passwordInputController),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              child: PressButton(
                title: "登录",
                callback: _login,
              ),
            )
          ]),
    ));
  }

  Future<void> _login() async {
    if (TextUtil.isEmpty(userNameInputController.text)) {
      Fluttertoast.showToast(msg: "用户名不能为空");
      return;
    }
    if (TextUtil.isEmpty(passwordInputController.text)) {
      Fluttertoast.showToast(msg: "密码不能为空");
      return;
    }
    ResultData resultData = await NetService.postSimple(Address.urlLogin, {
      "username": userNameInputController.text,
      "password": passwordInputController.text,
    });
    if (resultData.isSuccess()) {
      Fluttertoast.showToast(msg: "登录成功了!!!!!!!!!!!");
      LocalStorage.save(Keys.HOME_INFO, json.encode(resultData.data));
      UserDao.mUserInfo = UserInfoBean.fromJson(resultData.data);
      NavigatorUtils.goHome(context);
    }
  }

  TextEditingController userNameInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
}
