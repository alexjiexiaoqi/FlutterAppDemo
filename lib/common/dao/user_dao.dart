import 'dart:convert';

import 'package:usedcar2b/common/config/keys.dart';
import 'package:usedcar2b/common/dao/user_info.dart';
import 'package:usedcar2b/common/local/local_storage.dart';

class UserDao {
  ///初始化用户信息
  static UserInfoBean mUserInfo;
  static initUserInfo() async {
    String info = await LocalStorage.get(Keys.HOME_INFO);

    if (info != null) {
      Map<String, dynamic> map = json.decode(info);
      mUserInfo = UserInfoBean.fromJson(map);
    }
    return mUserInfo;
  }
}
