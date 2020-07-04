import 'api.dart';

class NetService {
  static getSimple(path, params) async {
    return await httpManager.getData(path, params);
  }

  static postSimple(path, params) async {
    return await httpManager.postData(path, params);
  }
}
