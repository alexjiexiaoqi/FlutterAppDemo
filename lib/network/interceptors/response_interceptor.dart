import 'package:dio/dio.dart';

import '../code.dart';
import '../result_data.dart';

class ResponseInterceptors extends InterceptorsWrapper {
  @override
  onResponse(Response response) async {
    RequestOptions option = response.request;
    return ResultData.create(response.statusCode, response.data, headers: response.headers);
  }
}
