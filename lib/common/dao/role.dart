import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role {
  @JsonKey(name: "sub_account")
  int sub_account; //0主账户，1子帐号
  @JsonKey(name: "seller_rank")
  int seller_rank;
  @JsonKey(name: "seller_im")
  int seller_im;
  @JsonKey(name: "seller_sticky")
  int seller_sticky;
  @JsonKey(name: "seller_car_post")
  int seller_car_post;
  @JsonKey(name: "seller_car_master")
  int seller_car_master;
  @JsonKey(name: "seller_call")
  int seller_call;
  @JsonKey(name: "seller_visitor")
  int seller_visitor;
  @JsonKey(name: "seller_apollo_sdk")
  int seller_apollo_sdk;
  @JsonKey(name: "c2b_car")
  int c2b_car;
  @JsonKey(name: "icbc_credit")
  int icbc_credit;
  @JsonKey(name: "cha_weizhang")
  int cha_weizhang;
  @JsonKey(name: "cha_xianqian")
  int cha_xianqian;
  @JsonKey(name: "cha_baoyang")
  int cha_baoyang;
  @JsonKey(name: "cha_gujia")
  int cha_gujia;
  @JsonKey(name: "cpc_product")
  int cpc_product; //cpc产品是否开放 0.否，1.是
  @JsonKey(name: "cpc_left_car_num")
  int cpc_left_car_num; //-1.从未购买 0.当前包已经使用完次数或过期，>0.有发车次数
  @JsonKey(name: "cpc_left_car_num_tip")
  String cpc_left_car_num_tip; //返回的全字符串,格式:剩余发车台次:xx台。
  @JsonKey(name: "free_cpc")
  int free_cpc; //1、0元cpc 0、非0元cpc
  @JsonKey(name: "seller_shouche")
  int seller_shouche; //收车【目前默认一直为1】
  @JsonKey(name: "seller_vr")
  int seller_vr; //首页vr管理
  @JsonKey(name: "finance_rebate")
  int finance_rebate; //金融返利

  Role(
    this.sub_account, //0主账户，1子帐号
    this.seller_rank,
    this.seller_im,
    this.seller_sticky,
    this.seller_car_post,
    this.seller_car_master,
    this.seller_call,
    this.seller_visitor,
    this.seller_apollo_sdk,
    this.c2b_car,
    this.icbc_credit,
    this.cha_weizhang,
    this.cha_xianqian,
    this.cha_baoyang,
    this.cha_gujia,
    this.cpc_product, //cpc产品是否开放 0.否，1.是
    this.cpc_left_car_num, //-1.从未购买 0.当前包已经使用完次数或过期，>0.有发车次数
    this.cpc_left_car_num_tip, //返回的全字符串,格式:剩余发车台次:xx台。
    this.free_cpc, //1、0元cpc 0、非0元cpc
    this.seller_shouche, //收车【目前默认一直为1】
    this.seller_vr, //首页vr管理
    this.finance_rebate, //金融返利
  );
  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleToJson(this);
}
