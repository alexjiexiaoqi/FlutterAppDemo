// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) {
  return Role(
    json['sub_account'] as int,
    json['seller_rank'] as int,
    json['seller_im'] as int,
    json['seller_sticky'] as int,
    json['seller_car_post'] as int,
    json['seller_car_master'] as int,
    json['seller_call'] as int,
    json['seller_visitor'] as int,
    json['seller_apollo_sdk'] as int,
    json['c2b_car'] as int,
    json['icbc_credit'] as int,
    json['cha_weizhang'] as int,
    json['cha_xianqian'] as int,
    json['cha_baoyang'] as int,
    json['cha_gujia'] as int,
    json['cpc_product'] as int,
    json['cpc_left_car_num'] as int,
    json['cpc_left_car_num_tip'] as String,
    json['free_cpc'] as int,
    json['seller_shouche'] as int,
    json['seller_vr'] as int,
    json['finance_rebate'] as int,
  );
}

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'sub_account': instance.sub_account,
      'seller_rank': instance.seller_rank,
      'seller_im': instance.seller_im,
      'seller_sticky': instance.seller_sticky,
      'seller_car_post': instance.seller_car_post,
      'seller_car_master': instance.seller_car_master,
      'seller_call': instance.seller_call,
      'seller_visitor': instance.seller_visitor,
      'seller_apollo_sdk': instance.seller_apollo_sdk,
      'c2b_car': instance.c2b_car,
      'icbc_credit': instance.icbc_credit,
      'cha_weizhang': instance.cha_weizhang,
      'cha_xianqian': instance.cha_xianqian,
      'cha_baoyang': instance.cha_baoyang,
      'cha_gujia': instance.cha_gujia,
      'cpc_product': instance.cpc_product,
      'cpc_left_car_num': instance.cpc_left_car_num,
      'cpc_left_car_num_tip': instance.cpc_left_car_num_tip,
      'free_cpc': instance.free_cpc,
      'seller_shouche': instance.seller_shouche,
      'seller_vr': instance.seller_vr,
      'finance_rebate': instance.finance_rebate,
    };
