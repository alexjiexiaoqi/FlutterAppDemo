import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
import 'package:usedcar2b/common/dao/role.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfoBean {
  @JsonKey(name: 'sellertoken')
  String sellertoken;
  @JsonKey(name: 'seller_rytoken')
  String seller_rytoken;
  @JsonKey(name: 'dealer_userid')
  int dealer_userid;
  @JsonKey(name: 'dealer_username')
  String dealer_username;
  @JsonKey(name: 'dealerid')
  int dealerid;
  @JsonKey(name: 'dealername')
  String dealername;
  @JsonKey(name: "role")
  Role role;
  @JsonKey(name: 'cityid')
  int cityid;
  @JsonKey(name: 'cityname')
  String cityname;
  @JsonKey(name: 'dealer_new')
  String dealer_new;
  @JsonKey(name: 'loginPhone')
  String loginPhone;
  @JsonKey(name: 'needupdatepass')
  int needupdatepass;
//  HomeInfoBean homeBean;
  @JsonKey(name: 'im_username')
  String im_username;
  @JsonKey(name: 'im_password')
  String im_password;
  @JsonKey(name: 'is_show_constract')
  int is_show_constract; //是否显示合同入口
  @JsonKey(name: 'is_show_sign_mobile')
  int is_show_sign_mobile; //是否显示签约手机号入口
  @JsonKey(name: 'connect_first_mobile')
  String connect_first_mobile; //商家端第一联系人/签约手机号
  @JsonKey(name: 'role_icon_info')
  int role_icon_info; //1只有 原有权限 2两个权限都有 3只有押车贷权限
  @JsonKey(name: 'is_show_video_auth')
  int is_show_video_auth; ////是否显示视频认证入口：0不显示，1显示
  @JsonKey(name: 'nature_status_desc')
  String nature_status_desc;

  UserInfoBean(
      this.sellertoken,
      this.seller_rytoken,
      this.dealer_userid,
      this.dealer_username,
      this.dealerid,
      this.dealername,
      this.role,
      this.cityid,
      this.cityname,
      this.dealer_new,
      this.loginPhone,
      this.needupdatepass,
      this.im_username,
      this.im_password,
      this.is_show_constract, //是否显示合同入口
      this.is_show_sign_mobile, //是否显示签约手机号入口
      this.connect_first_mobile, //商家端第一联系人/签约手机号
      this.role_icon_info, //1只有 原有权限 2两个权限都有 3只有押车贷权限
      this.is_show_video_auth, ////是否显示视频认证入口：0不显示，1显示
      this.nature_status_desc);
  factory UserInfoBean.fromJson(Map<String, dynamic> json) =>
      _$UserInfoBeanFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoBeanToJson(this);
}
