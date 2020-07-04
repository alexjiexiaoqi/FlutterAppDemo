import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:usedcar2b/application.dart';
import 'package:usedcar2b/common/config/config.dart';
import 'package:usedcar2b/common/local/local_storage.dart';

class TokenInterceptors extends InterceptorsWrapper {
  String _token;

  @override
  onRequest(RequestOptions options) async {
    String token = await LocalStorage.get(Config.TOKEN_KEY);
    print("token=$token \n ${options.method}");
    if (options.method == "GET") {
      options.queryParameters ??= Map.from({"token": token});
      options.queryParameters["token"] = token;
    } else if (options.method == "POST") {
      options.data ??= Map.from({"type": 2});
      options.data["os"] = "android";
      options.data["app_source"] = "12";
      options.data["appver"] = "8.8.5";
      signParams(options.data);
    }
    return options;
  }

  @override
  onResponse(Response response) async {
    return response;
  }

  void signParams(Map<String, Object> params) {
    String paramString = getParamEntityEncodeAllValue(params);
    String md5 = getMd5(paramString + Application.SN);
    StringBuffer sb = new StringBuffer()
      ..write(md5[20])
      ..write(md5[15])
      ..write(md5[0])
      ..write(md5[3])
      ..write(md5[1])
      ..write(md5[5]);
    params["_apikey"] = sb.toString();
  }

  String getParamEntityEncodeAllValue(Map<String, Object> params) {
    //先给paras按照key首字母a-z排序
    Map<String, Object> paramsSort = sortParams(params);
    StringBuffer sb = new StringBuffer();
    if (params != null) {
      for (MapEntry<String, Object> param in paramsSort.entries) {
        var value = "";
        if (param.value != null) {
          value = Uri.encodeComponent(param.value.toString());
        }
        String key = param.key;
        sb
          ..write(key == null ? "" : key)
          ..write("=")
          ..write(value == null ? "" : value)
          ..write("&");
      }
    }
    return sb.toString().substring(0, sb.length - 1);
  }

  Map<String, Object> sortParams(Map<String, Object> params) {
    Map<String, Object> sortMap = new Map<String, Object>();
    List<String> keys = params.keys.toList();
    // key排序
    keys.sort((a, b) {
      List<int> al = a.codeUnits;
      List<int> bl = b.codeUnits;
      for (int i = 0; i < al.length; i++) {
        if (bl.length <= i) return 1;
        if (al[i] > bl[i]) {
          return 1;
        } else if (al[i] < bl[i]) return -1;
      }
      return 0;
    });
    for (String key in keys) {
      sortMap[key] = params[key];
    }
    return sortMap;
  }

  String getMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }
}
