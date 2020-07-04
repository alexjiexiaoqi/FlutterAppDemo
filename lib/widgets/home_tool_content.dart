import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:usedcar2b/common/config/keys.dart';
import 'package:usedcar2b/common/dao/home_broard_info.dart';
import 'package:usedcar2b/common/dao/home_tool_info.dart';
import 'package:usedcar2b/common/dao/role.dart';
import 'package:usedcar2b/common/dao/user_dao.dart';
import 'package:usedcar2b/common/local/local_storage.dart';
import 'package:usedcar2b/network/address.dart';
import 'package:usedcar2b/network/netservice.dart';
import 'package:usedcar2b/network/result_data.dart';
import 'package:usedcar2b/states/xin_states.dart';

import 'home_icon_item.dart';

class HomeToolContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeToolState();
  }
}

class HomeToolState extends State<HomeToolContent> {
  List<HomeToolInfo> list = [];
  List<HomeToolInfo> glist = [];
  int num;
  int jr_num;
  int b4;
  int b5;
  @override
  void initState() {
    super.initState();
    initToolContent();
    requestData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreConnector<XinStates, HomeBroardInfo>(
        converter: (store) => store.state.homeBroardInfo,
        builder: (context, broardinfo) {
          setDot(broardinfo);
          return GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: 1),
            itemCount: glist.length,
            itemBuilder: (context, index) {
              return new GestureDetector(
                  onTap: onClick(glist[index].id),
                  child: IconItem(
                      imagepath: glist[index].drawable,
                      bottomtext: glist[index].name,
                      isShowDot: glist[index].showDot == 0,
                      isShowCount: glist[index].showDot == 1,
                      showCount: glist[index].count));
            },
          );
        });
  }

  //gridview item点击事件
  onClick(int id) {
    switch (id) {
      case HomeToolId.ID_COLLECTMONEY: //收款
//        fragment.clickMoney();
        break;
      case HomeToolId.ID_COLLECTCAR: //发车
        if (UserDao.mUserInfo.role.cpc_left_car_num == 0) {
//          Intent iCpc = new Intent(mContext, WebViewActivity.class);
//          WapBean wapBean = UserManager.getInstance().getInfoBean().getWapUrls().get(Configure.CPC_INFO);
//          iCpc.putExtra(IntentKey.URL, (wapBean != null && wapBean.url != null) ? wapBean.url
//              : "https://m.xin.com/common/sj_intro/");
//          mContext.startActivity(iCpc);
        } else {
//          mContext.startActivity(new Intent(mContext, CollectCarListActivity.class));
        }
        break;
      case HomeToolId.ID_CONSUMEADVISE: //消费者咨询
//        Intent iBussiness = new Intent(mContext, ConsumeAdviseActiivty.class);
//        iBussiness.putExtra(IntentKey.MOBILE, data == null ? "" : data.getMissedcalls());
//        mContext.startActivity(iBussiness);
        break;
      case HomeToolId.ID_EVALUATE: //估价
//        MobclickAgent.onEvent(mContext, "Evaluate_enter");
//        Intent intent = new Intent(mContext, EvaluateActivity.class);
//        intent.putExtra(IntentKey.CITYID, UserManager.getInstance().getInfoBean().getCityid());
//        intent.putExtra(IntentKey.CITYNAME, UserManager.getInstance().getInfoBean().getCityname());
//        mContext.startActivity(intent);
        break;
      case HomeToolId.ID_QUERYVIOLATION: //查违章
//        MobclickAgent.onEvent(mContext, "Illegal_enter");
//        Intent queryViolation = new Intent(mContext, QueryViolationActivity.class);
//        mContext.startActivity(queryViolation);
        break;
      case HomeToolId.ID_QUERYMOVE: //查限迁
//        MobclickAgent.onEvent(mContext, "Emissions_enter");
//        Intent iRealse = new Intent(mContext, WebViewActivity.class);
//        WapBean wapBean = UserManager.getInstance().getInfoBean().getWapUrls().get(Configure.WEB_CAR_XIANQIAN);
//        iRealse.putExtra(IntentKey.URL, (wapBean != null && wapBean.url != null) ? wapBean.url : "https://m.xin.com/emission/");
//        mContext.startActivity(iRealse);
        break;
      case HomeToolId.ID_VISITHISTORY: //到访记录
//        ZhugeSDK.getInstance().track(mContext, "首页-客户到访");
//        MobclickAgent.onEvent(mContext, "Visit_enter");
//        Intent iVisit = new Intent(mContext, VisitHistoryActivity.class);
//        mContext.startActivity(iVisit);
        break;
      case HomeToolId.ID_PUTTOP: //刷新置顶
//        fragment.clickPuttop();
        break;
      case HomeToolId.ID_SDK:
//        SharedPreferences sp = mContext.getSharedPreferences(SharePreferenceKey.CONFIG_DEBUG, Context.MODE_PRIVATE);
//        Intent sdkIntent = new Intent();
//        sdkIntent.setClassName(mContext, "com.uxin.buyerphone.ui.UiHome");
//        sdkIntent.putExtra("sdk_username", sp.getString("login_username", ""));
//        sdkIntent.putExtra("sdk_password", sp.getString("login_password", ""));
//        sdkIntent.putExtra("debug", URLConfig.debug);
//        sdkIntent.putExtra("sdk_token", UserManager.getInstance().getInfoBean().getSellertoken());
//        mContext.startActivity(sdkIntent);
        break;
      case HomeToolId.ID_QUERYMAINTAIN:
//        MobclickAgent.onEvent(mContext, "Insurance_enter");
//        ZhugeSDK.getInstance().track(mContext, "首页-查保养");
//        Intent iMaintain = new Intent(mContext, WebViewActivity.class);
//        WapBean wapMaintain = UserManager.getInstance().getInfoBean().getWapUrls().get(Configure.WEB_CAR_BAOYANG);
//        iMaintain.putExtra(IntentKey.URL, (wapMaintain != null && wapMaintain.url != null) ? wapMaintain.url : "https://m.xin.com/common/maintenance_service/2/");//+"?series_name="
//        iMaintain.putExtra(IntentKey.FILTER, WebViewActivity.QUERYMAINTAIN);
//        mContext.startActivity(iMaintain);
        break;
      case HomeToolId.ID_MARKETANALYSIS:
//        MobclickAgent.onEvent(mContext, "Raking_enter");
//        ZhugeSDK.getInstance().track(mContext, "首页-排行榜");
//        SPConfig.putHomeFirstShow(HomeToolId.ID_MARKETANALYSIS);
//        Intent iMarket = new Intent(mContext, MarketAnalysiscActivity.class);
//        mContext.startActivity(iMarket);
        break;
      case HomeToolId.ID_ICBCCREDIT:
//        Intent iICBC = new Intent(mContext, WebViewActivity.class);
//        ZhugeSDK.getInstance().track(mContext, "C-首页-工行信审");
//        WapBean wapICBC = UserManager.getInstance().getInfoBean().getWapUrls().get(Configure.WEB_ICBC_CREDIT);
//        iICBC.putExtra(IntentKey.URL, (wapICBC != null && wapICBC.url != null) ? wapICBC.url : "https://api.youxinjinrong.com/seller/s_credit/creditlist");
//        iICBC.putExtra(IntentKey.FILTER, WebViewActivity.QUERYMAINTAIN);
//        mContext.startActivity(iICBC);
        break;
      case HomeToolId.ID_SHOUCHE:
//        Intent shouChe = new Intent(mContext, BuyCarActivity.class);
//        mContext.startActivity(shouChe);
        break;
      case HomeToolId.ID_VR:
//        Log.i("TAG", "点击vr管理");
//        MobclickAgent.onEvent(mContext, "vrgl87");
//        Intent vr = new Intent(mContext, VRManagerActivity.class);
//        mContext.startActivity(vr);
        break;
      case HomeToolId.ID_REBATE:
//        Log.i("TAG", "点击我的服务费");
//        MobclickAgent.onEvent(mContext, "wdfwf87");
//        Intent rebate = new Intent(mContext, RebateActivity.class);
//        mContext.startActivity(rebate);
        break;
      case HomeToolId.ID_SIGNATURE:
//        Log.i("TAG", "点击车辆成交签约");
//        MobclickAgent.onEvent(mContext, "clcjqy88");
//        Intent signatrue = new Intent(mContext, DealTaskListActivity.class);
//        mContext.startActivity(signatrue);
        break;
      case HomeToolId.ID_SIGNATUREJR:
//        Log.i("TAG", "点击金融签约");
//        MobclickAgent.onEvent(mContext, "clcjqy99");
//        Intent signatruejr = new Intent(mContext, WebViewActivity.class);
//        String url=URLConfig.H5PayHost+"/b-loan/electron/list?"+"&dealerid="
//            +UserManager.getInstance().getInfoBean().getDealerid()+"&source=1&from=sjd&platform=android";
//        signatruejr.putExtra(IntentKey.URL,url);
//        signatruejr.putExtra(K.IntentKey.COOKIE_NAME,url);
//        signatruejr.putExtra(K.IntentKey.COOKIE_NAME,"token");
//        signatruejr.putExtra(K.IntentKey.COOKIE_VALUE,UserManager.getInstance().getInfoBean().getSellertoken());
//        signatruejr.putExtra(K.IntentKey.LOADURL,true);
//        signatruejr.putExtra(K.IntentKey.HOST, URLConfig.H5PayHost);
//        mContext.startActivity(signatruejr);
        break;
    }
  }

  void initToolContent() {
    list.add(new HomeToolInfo(HomeToolId.ID_SIGNATURE,
        "resource/images/home_icon_dealsign.png", 0, -1, "车辆成交签约"));
    list.add(new HomeToolInfo(HomeToolId.ID_SIGNATUREJR,
        "resource/images/home_icon_dealsignjr.png", 0, -1, "金融签约"));
    list.add(new HomeToolInfo(HomeToolId.ID_QUERYVIOLATION,
        "resource/images/home_icon_chaweizhang.png", 0, -1, "查违章"));
    list.add(new HomeToolInfo(HomeToolId.ID_QUERYMOVE,
        "resource/images/home_icon_chapaifang.png", 0, -1, "查限迁"));
    list.add(new HomeToolInfo(HomeToolId.ID_QUERYMAINTAIN,
        "resource/images/home_icon_chabaoyang.png", 0, -1, "查保养"));
    list.add(new HomeToolInfo(HomeToolId.ID_EVALUATE,
        "resource/images/home_icon_gujia.png", 0, -1, "估价"));
    list.add(new HomeToolInfo(HomeToolId.ID_MARKETANALYSIS,
        "resource/images/home_icon_marketanalysis.png", 0, -1, "二手车行情"));
    list.add(new HomeToolInfo(HomeToolId.ID_VISITHISTORY,
        "resource/images/home_icon_visit.png", 0, -1, "客户到访管理"));
    list.add(new HomeToolInfo(HomeToolId.ID_PUTTOP,
        "resource/images/home_icon_top.png", 0, -1, "车辆置顶"));
    list.add(new HomeToolInfo(HomeToolId.ID_CONSUMEADVISE,
        "resource/images/home_icon_shangji.png", 0, -1, "咨询电话"));
    list.add(new HomeToolInfo(HomeToolId.ID_ICBCCREDIT,
        "resource/images/ic_ghxd.png", 0, -1, "工行信贷"));
    list.add(new HomeToolInfo(
        HomeToolId.ID_SHOUCHE, "resource/images/ic_shouche.png", 0, -1, "收车"));
    list.add(new HomeToolInfo(
        HomeToolId.ID_VR, "resource/images/ic_vr.png", 0, -1, "VR管理"));
    list.add(new HomeToolInfo(HomeToolId.ID_REBATE,
        "resource/images/home_icon_rebate.png", 0, -1, "我的服务费"));
    Role role = UserDao.mUserInfo.role;
    assert(role != null);
    for (HomeToolInfo toolInfo in list) {
      bool remove = false;
      switch (toolInfo.id) {
        case HomeToolId.ID_COLLECTMONEY:
          if (role.seller_car_master == 0) remove = true;
          break;
        case HomeToolId.ID_COLLECTCAR:
          if (role.seller_car_post == 0) remove = true;
          break;
        case HomeToolId.ID_CONSUMEADVISE:
          if (role.seller_call == 0) remove = true;
          break;
        case HomeToolId.ID_EVALUATE:
          if (role.cha_gujia == 0) remove = true;
          break;
        case HomeToolId.ID_QUERYVIOLATION:
          if (role.cha_weizhang == 0) remove = true;
          break;
        case HomeToolId.ID_QUERYMOVE:
          if (role.cha_xianqian == 0) remove = true;
          break;
        case HomeToolId.ID_SHOUCHE:
          if (role.seller_shouche == 0) remove = true;
          break;
        case HomeToolId.ID_PUTTOP:
          if (role.seller_sticky == 0) remove = true;
          break;
        case HomeToolId.ID_VISITHISTORY:
          if (role.seller_visitor == 0) remove = true;
          break;
        case HomeToolId.ID_SDK:
          if (role.seller_apollo_sdk == 0) remove = true;
          break;
        case HomeToolId.ID_QUERYMAINTAIN:
          if (role.cha_baoyang == 0) remove = true;
          break;
        case HomeToolId.ID_SOURCEPERSONAL:
          if (role.c2b_car == 0) remove = true;
          break;
        case HomeToolId.ID_MARKETANALYSIS:
          if (role.seller_rank == 0) remove = true;
          break;
        case HomeToolId.ID_ICBCCREDIT:
          if (role.icbc_credit == 0) remove = true;
          break;
        case HomeToolId.ID_VR:
          if (role.seller_vr == 0) remove = true;
          break;
        case HomeToolId.ID_REBATE:
          if (role.finance_rebate == 0) remove = true;
          break;
      }
      if (!remove) {
        glist.add(toolInfo);
      }
    }
  }

  void setDot(HomeBroardInfo broardInfo) {
    if (broardInfo != null) {
      print("setDot -----------------------");
      int a4 = broardInfo.getmoney != null ? broardInfo.getmoney : 0;
      int a5 = broardInfo.missedcalls != null ? broardInfo.missedcalls : 0;
      for (HomeToolInfo item in glist) {
        switch (item.id) {
          case HomeToolId.ID_COLLECTMONEY:
            item.showDot = (a4 > b4 ? 0 : -1);
            break;
          case HomeToolId.ID_CONSUMEADVISE:
            item.showDot = (a5 > b5 ? 1 : -1);
            item.count = (a5 - b5);
            break;
          case HomeToolId.ID_SIGNATURE:
            item.showDot = (num > 0 ? 1 : -1);
            item.count = num;
            break;
          case HomeToolId.ID_SIGNATUREJR:
            item.showDot = (jr_num > 0 ? 1 : -1);
            item.count = jr_num;
            break;
        }
      }
    }
  }

  void requestData() async {
    b4 = await LocalStorage.get(
        UserDao.mUserInfo.dealerid.toString() + Keys.MONEY_AMOUNT);
    b5 = await LocalStorage.get(
        UserDao.mUserInfo.dealerid.toString() + Keys.MISSED_CALL);
    if (b4 == null) {
      b4 = 0;
    }
    if (b5 == null) {
      b5 = 0;
    }
    ResultData resultDataNum =
        await NetService.postSimple(Address.urlContractNum, {
      ParamsKeys.DEALERID: UserDao.mUserInfo.dealerid,
      ParamsKeys.SELLER_TOKEN: UserDao.mUserInfo?.sellertoken
    });
    if (resultDataNum.isSuccess()) {
      setState(() {
        num = (resultDataNum.data != null ? resultDataNum.data["num"] : 0);
        jr_num =
            (resultDataNum.data != null ? resultDataNum.data["jr_num"] : 0);
      });
    }
  }
}
