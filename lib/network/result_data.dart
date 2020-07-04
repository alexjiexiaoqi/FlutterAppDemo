import 'dart:convert';

import 'package:usedcar2b/network/code.dart';

class ResultData {
  var data;
  bool result;
  int code;
  String msg;
  var headers;
  int networkCode;

  // ResultData(this.data, this.result, this.code, {this.headers});

  ResultData(this.networkCode, this.code, this.msg, this.data, {this.headers});

  static ResultData create(networkCode, data, {headers}) {
    print("ResultData data= ${data}");
    if (data != null) {
      if (data is Map) {
        return ResultData(
            networkCode, data["code"], data["message"], data["data"],
            headers: headers);
      } else if (data is String) {
        var dataMap = json.decode(data);
        return ResultData(
            networkCode, dataMap["code"], dataMap["message"], dataMap["data"],
            headers: headers);
      }
    }
    return ResultData(networkCode, networkCode, "", data, headers: headers);
  }

  bool isSuccess() {
    return code == Code.SUCCESS;
  }
}
