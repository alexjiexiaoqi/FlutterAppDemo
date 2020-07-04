// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_top_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTopInfoBean _$HomeTopInfoBeanFromJson(Map<String, dynamic> json) {
  return HomeTopInfoBean(
    json['selling'] as int,
    json['selled'] as int,
    json['sell_total'] as String,
    json['cpc_top_nums'] as int,
    json['title'] as String,
    json['bank_name'] as String,
    json['bank_no'] as String,
    json['bank_code'] as String,
    json['dealername'] as String,
    json['addr'] as String,
    json['maintainer_mobile'] as String,
    json['dealertype'] as String,
    json['message'] as int,
    json['getmoney'] as String,
    json['msgpageurl'] as String,
    json['missedcalls'] as int,
    json['createtime'] as String,
  );
}

Map<String, dynamic> _$HomeTopInfoBeanToJson(HomeTopInfoBean instance) =>
    <String, dynamic>{
      'selling': instance.selling,
      'selled': instance.selled,
      'sell_total': instance.sell_total,
      'cpc_top_nums': instance.cpc_top_nums,
      'title': instance.title,
      'bank_name': instance.bank_name,
      'bank_no': instance.bank_no,
      'bank_code': instance.bank_code,
      'dealername': instance.dealername,
      'addr': instance.addr,
      'maintainer_mobile': instance.maintainer_mobile,
      'dealertype': instance.dealertype,
      'message': instance.message,
      'getmoney': instance.getmoney,
      'msgpageurl': instance.msgpageurl,
      'missedcalls': instance.missedcalls,
      'createtime': instance.createtime,
    };
