import 'package:dio/dio.dart';

import '../code.dart';
import '../result_data.dart';

///是否需要弹提示
const NOT_TIP_KEY = "noTip";

class ErrorInterceptors extends InterceptorsWrapper {
  final Dio _dio;

  ErrorInterceptors(this._dio);

  @override
  onRequest(RequestOptions options) async {
    //没有网络
    // var connectivityResult = await (new Connectivity().checkConnectivity());
    // if (connectivityResult == ConnectivityResult.none) {
    //   return _dio.resolve(ResultData.create(Code.NETWORK_ERROR,null));
    // }
    return options;
  }

  @override
  Future onError(DioError err) {
    print('>>>>>>请求异常: ' + err.toString());
    print('>>>>>请求异常 url: ' + err.request.toString());
    return _dio.resolve(Response(
        request: err.request,
        statusCode: Code.ERROR,
        statusMessage: err.error.toString() ?? "系统错误",
        data: ResultData.create(err.response?.statusCode ?? Code.ERROR, err.response)));
  }
}
