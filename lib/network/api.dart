import 'dart:collection';
import 'dart:io';

import 'package:common_utils/common_utils.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:usedcar2b/network/result_data.dart';

import '../application.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/header_interceptor.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/response_interceptor.dart';
import 'interceptors/token_interceptor.dart';

///http请求
class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json; charset=utf-8";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";

  var _dio = Dio(BaseOptions(
    baseUrl: "",
    connectTimeout: 30000,
    receiveTimeout: 30000,
    contentType: CONTENT_TYPE_FORM,
  ));
  final TokenInterceptors _tokenInterceptors = new TokenInterceptors();

  HttpManager() {
    _dio.interceptors.add(new HeaderInterceptors());

    _dio.interceptors.add(_tokenInterceptors);

    _dio.interceptors.add(new LogsInterceptors());

    _dio.interceptors.add(new ErrorInterceptors(_dio));

    _dio.interceptors.add(new ResponseInterceptors());

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      //这一段是解决安卓https抓包的问题
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return Platform.isAndroid;
      };
      //这是抓包代理
      client.findProxy = (uri) {
        return "PROXY ${Application.HTTPPOXY}";
      };
    };
  }

  Future<ResultData> getData(path, params,
      {Map<String, dynamic> header, noTip = false}) async {
    Map<String, dynamic> headers = new HashMap();
    if (header != null) {
      headers.addAll(header);
    }

    return await _dio
        .get(path, queryParameters: params)
        .then((response) {
          return response.data as ResultData;
        })
        .then(errorDataToast)
        .catchError(errorCatch);
  }

  Future<ResultData> postData(path, params, {noTip = false}) async {
    return await _dio
        .post(path, data: params)
        .then((response) {
          return response.data;
        })
        .then(errorDataToast)
        .catchError(errorCatch);
  }

  errorDataToast(data) {
    if (!data.isSuccess() && !TextUtil.isEmpty(data.msg)) {
      Fluttertoast.showToast(msg: data.msg, gravity: ToastGravity.CENTER);
    }
    return data;
  }

  errorCatch(onError) {
    print("request--------->$errorCatch");
    return ResultData.create(-1, null);
  }
}

final HttpManager httpManager = new HttpManager();
