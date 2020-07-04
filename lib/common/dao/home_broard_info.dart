import 'package:json_annotation/json_annotation.dart';

part 'home_broard_info.g.dart';

@JsonSerializable()
class HomeBroardInfo {
  @JsonKey(name: 'message')
  int message; //消息数量，如果和之前不一样，显示小红点
  @JsonKey(name: 'selling')
  int selling;
  @JsonKey(name: 'selled')
  int selled;
  @JsonKey(name: 'getmoney')
  int getmoney;
  @JsonKey(name: 'avatar')
  String avatar;
  @JsonKey(name: 'dealername')
  String dealername;
  @JsonKey(name: 'dealertype')
  String dealertype;
  @JsonKey(name: 'sell_total')
  String sell_total;
  @JsonKey(name: 'addr')
  String addr;
  @JsonKey(name: 'createtime')
  String createtime;
  @JsonKey(name: 'title')
  String title; //户名
  @JsonKey(name: 'bank_name')
  String bank_name; //开户行名//
  @JsonKey(name: 'bank_no')
  String bank_no; //开户帐号
  @JsonKey(name: 'bank_code')
  String bank_code; //联行号
  @JsonKey(name: 'msgpageurl')
  String msgpageurl;
  @JsonKey(name: 'missedcalls')
  int missedcalls;
  @JsonKey(name: 'maintainer_mobile')
  String maintainer_mobile;
  @JsonKey(name: 'cpc_top_nums')
  int cpc_top_nums;
  @JsonKey(name: 'tel_400')
  String tel_400;
  @JsonKey(name: 'tel_400_show')
  String tel_400_show;
  @JsonKey(name: 'nature_status_desc')
  String nature_status_desc;

  HomeBroardInfo(
    this.message, //消息数量，如果和之前不一样，显示小红点
    this.selling,
    this.selled,
    this.getmoney,
    this.avatar,
    this.dealername,
    this.dealertype,
    this.sell_total,
    this.addr,
    this.createtime,
    this.title, //户名
    this.bank_name, //开户行名称
    this.bank_no, //开户帐号
    this.bank_code, //联行号
    this.msgpageurl,
    this.missedcalls,
    this.maintainer_mobile,
    this.cpc_top_nums,
    this.tel_400,
    this.tel_400_show,
    this.nature_status_desc,
  );
  factory HomeBroardInfo.fromJson(Map<String, dynamic> json) =>
      _$HomeBroardInfoFromJson(json);

  Map<String, dynamic> toJson() => _$HomeBroardInfoToJson(this);
}
