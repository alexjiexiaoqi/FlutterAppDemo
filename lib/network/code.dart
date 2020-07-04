import 'package:usedcar2b/common/event/http_error_event.dart';
import 'package:usedcar2b/common/event/index.dart';

///错误编码
class Code {
  static const ERROR = -404;

  ///网络错误
  static const NETWORK_ERROR = -1;

  ///网络超时
  static const NETWORK_TIMEOUT = -2;

  ///网络返回数据格式异常
  static const NETWORK_JSON_EXCEPTION = -3;

  static const SUCCESS = 2;

  static errorHandleFunction(code, message, noTip) {
    if (noTip) {
      return message;
    }
    eventBus.fire(new HttpErrorEvent(code, message));
    return message;
  }
}
