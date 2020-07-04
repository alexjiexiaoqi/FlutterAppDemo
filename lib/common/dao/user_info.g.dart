// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoBean _$UserInfoBeanFromJson(Map<String, dynamic> json) {
  return UserInfoBean(
    json['sellertoken'] as String,
    json['seller_rytoken'] as String,
    json['dealer_userid'] as int,
    json['dealer_username'] as String,
    json['dealerid'] as int,
    json['dealername'] as String,
    json['role'] == null
        ? null
        : Role.fromJson(json['role'] as Map<String, dynamic>),
    json['cityid'] as int,
    json['cityname'] as String,
    json['dealer_new'] as String,
    json['loginPhone'] as String,
    json['needupdatepass'] as int,
    json['im_username'] as String,
    json['im_password'] as String,
    json['is_show_constract'] as int,
    json['is_show_sign_mobile'] as int,
    json['connect_first_mobile'] as String,
    json['role_icon_info'] as int,
    json['is_show_video_auth'] as int,
    json['nature_status_desc'] as String,
  );
}

Map<String, dynamic> _$UserInfoBeanToJson(UserInfoBean instance) =>
    <String, dynamic>{
      'sellertoken': instance.sellertoken,
      'seller_rytoken': instance.seller_rytoken,
      'dealer_userid': instance.dealer_userid,
      'dealer_username': instance.dealer_username,
      'dealerid': instance.dealerid,
      'dealername': instance.dealername,
      'role': instance.role,
      'cityid': instance.cityid,
      'cityname': instance.cityname,
      'dealer_new': instance.dealer_new,
      'loginPhone': instance.loginPhone,
      'needupdatepass': instance.needupdatepass,
      'im_username': instance.im_username,
      'im_password': instance.im_password,
      'is_show_constract': instance.is_show_constract,
      'is_show_sign_mobile': instance.is_show_sign_mobile,
      'connect_first_mobile': instance.connect_first_mobile,
      'role_icon_info': instance.role_icon_info,
      'is_show_video_auth': instance.is_show_video_auth,
      'nature_status_desc': instance.nature_status_desc,
    };
