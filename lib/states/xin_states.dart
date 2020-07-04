import 'package:usedcar2b/common/dao/home_broard_info.dart';
import 'package:usedcar2b/states/home_reducer.dart';

class XinStates {
  HomeBroardInfo homeBroardInfo;
  XinStates({this.homeBroardInfo});
}

XinStates appReducer(XinStates state, action) {
  return XinStates(homeBroardInfo: HomeReducer(state.homeBroardInfo, action));
}
