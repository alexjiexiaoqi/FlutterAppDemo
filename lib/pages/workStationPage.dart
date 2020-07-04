import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:usedcar2b/common/config/keys.dart';
import 'package:usedcar2b/common/dao/home_broard_info.dart';
import 'package:usedcar2b/common/dao/user_dao.dart';
import 'package:usedcar2b/common/style/style.dart';
import 'package:usedcar2b/network/address.dart';
import 'package:usedcar2b/network/netservice.dart';
import 'package:usedcar2b/network/result_data.dart';
import 'package:usedcar2b/states/home_reducer.dart';
import 'package:usedcar2b/states/xin_states.dart';
import 'package:usedcar2b/widgets/home_tool_content.dart';
import 'package:usedcar2b/widgets/home_top_item.dart';

class WorkStationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WorkStationState();
  }
}

class WorkStationState extends State<WorkStationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreConnector<XinStates, HomeBroardInfo>(
        converter: (store) => store.state.homeBroardInfo,
        builder: (context, broardinfo) {
          return Scaffold(
            appBar: AppBar(
              title: Image.asset(
                "resource/images/home_logo.png",
                width: 157,
                height: 21,
              ),
              centerTitle: true,
              backgroundColor: Colors.red,
            ),
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: HomeTopItem(
                      height: 120,
                      title: "在售",
                      value: (broardinfo?.selling ?? 0) > 10000
                          ? NumUtil.getNumByValueDouble(
                                  (broardinfo?.selling ?? 0) / 10000, 2)
                              .toStringAsFixed(2)
                          : broardinfo?.selling ?? 0,
                      unit: (broardinfo?.selling ?? 0) > 10000 ? "万辆" : "辆",
                    ),
                  ),
                  Container(
                    width: 0.5,
                    height: 120,
                    color: AppColors.color_dddddd,
                  ),
                  Expanded(
                    flex: 1,
                    child: HomeTopItem(
                      height: 120,
                      title: "售出",
                      value: (broardinfo?.selled ?? 0) > 10000
                          ? NumUtil.getNumByValueDouble(
                                  (broardinfo?.selled ?? 0) / 10000, 2)
                              .toStringAsFixed(2)
                          : broardinfo?.selled ?? "0",
                      unit: (broardinfo?.selled ?? 0) > 10000 ? "万辆" : "辆",
                    ),
                  ),
                ],
              ),
              Container(
                height: 0.5,
                color: AppColors.color_dddddd,
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: HomeTopItem(
                      height: 120,
                      title: "销售额",
                      value: double.parse(broardinfo?.sell_total ?? "0") > 10000
                          ? NumUtil.getNumByValueStr(
                                  (double.parse(broardinfo?.sell_total ?? "0") /
                                          10000)
                                      .toString(),
                                  fractionDigits: 2)
                              .toStringAsFixed(2)
                          : broardinfo?.sell_total ?? "0",
                      unit: double.parse(broardinfo?.sell_total ?? "0") > 10000
                          ? "亿"
                          : "万",
                    ),
                  ),
                  Container(
                    width: 0.5,
                    height: 120,
                    color: AppColors.color_dddddd,
                  ),
                  Expanded(
                    flex: 1,
                    child: HomeTopItem(
                      height: 120,
                      title: "今日可置顶",
                      value: broardinfo?.cpc_top_nums ?? 0,
                      unit: "次",
                    ),
                  ),
                ],
              ),
              Container(
                  height: 10,
                  color: AppColors.color_f6f6f6,
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Container(
                        height: 0.5,
                        color: AppColors.color_dddddd,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        height: 0.5,
                        color: AppColors.color_dddddd,
                      ),
                    ],
                  )),
              Container(
                  height: 40,
                  color: Colors.white,
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Container(
                        height: 0.5,
                        color: AppColors.color_dddddd,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          textDirection: TextDirection.ltr,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                              child: Image.asset(
                                "resource/images/home_icon_down.png",
                                height: 30,
                              ),
                            ),
                            Text("常用工具")
                          ],
                        ),
                      ),
                      Container(
                        height: 0.5,
                        color: AppColors.color_dddddd,
                      ),
                    ],
                  )),
              SizedBox(
                height: 400,
                child: HomeToolContent(),
              )
            ])),
          );
        });
  }

  void requestDataBorad() async {
    ResultData resultData = await NetService.postSimple(Address.urlHome, {
      ParamsKeys.SELLER_TOKEN: UserDao.mUserInfo?.sellertoken,
      ParamsKeys.DEALERID: UserDao.mUserInfo.dealerid,
    });
    if (resultData.isSuccess()) {
      //此处数据共享与我的页面 resultData.data
      StoreProvider.of<XinStates>(context)
          .dispatch(RefreshBroardAction(resultData));
    }
  }

  @override
  void initState() {
    super.initState();
    requestDataBorad();
  }
}
