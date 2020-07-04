import 'package:json_annotation/json_annotation.dart';

part 'home_top_info.g.dart';

@JsonSerializable()
class HomeTopInfoBean {
  @JsonKey(name: 'selling')
  int selling;
  @JsonKey(name: 'selled')
  int selled;
  @JsonKey(name: 'sell_total')
  String sell_total;
  @JsonKey(name: 'cpc_top_nums')
  int cpc_top_nums;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'bank_name')
  String bank_name;
  @JsonKey(name: 'bank_no')
  String bank_no;
  @JsonKey(name: 'bank_code')
  String bank_code;
  @JsonKey(name: 'dealername')
  String dealername;
  @JsonKey(name: 'addr')
  String addr;
  @JsonKey(name: 'maintainer_mobile')
  String maintainer_mobile;
//  HomeInfoBean homeBean;
  @JsonKey(name: 'dealertype')
  String dealertype;
  @JsonKey(name: 'message')
  int message;
  @JsonKey(name: 'getmoney')
  String getmoney; //是否显示合同入口
  @JsonKey(name: 'msgpageurl')
  String msgpageurl; //是否显示签约手机号入口
  @JsonKey(name: 'missedcalls')
  int missedcalls; //商家端第一联系人/签约手机号
  @JsonKey(name: 'createtime')
  String createtime; //1只有 原有权限 2两个权限都有 3只有押车贷权限

  HomeTopInfoBean(
      this.selling,
      this.selled,
      this.sell_total,
      this.cpc_top_nums,
      this.title,
      this.bank_name,
      this.bank_no,
      this.bank_code,
      this.dealername,
      this.addr,
      this.maintainer_mobile,
//  HomeInfoBean homeBean;
      this.dealertype,
      this.message,
      this.getmoney,
      this.msgpageurl,
      this.missedcalls,
      this.createtime);
  factory HomeTopInfoBean.fromJson(Map<String, dynamic> json) =>
      _$HomeTopInfoBeanFromJson(json);

  Map<String, dynamic> toJson() => _$HomeTopInfoBeanToJson(this);
}
