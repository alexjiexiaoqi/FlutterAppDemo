import 'package:redux/redux.dart';
import 'package:usedcar2b/common/dao/home_broard_info.dart';
import 'package:usedcar2b/network/result_data.dart';

final HomeReducer = combineReducers<HomeBroardInfo>(
    [TypedReducer<HomeBroardInfo, RefreshBroardAction>(_refresh)]);

HomeBroardInfo _refresh(HomeBroardInfo broardInfo, action) {
  broardInfo = HomeBroardInfo.fromJson(action.data.data);
  return broardInfo;
}

class RefreshBroardAction {
  ResultData data;
  RefreshBroardAction(this.data);
}
