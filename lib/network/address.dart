///网络请求地址
class Address {
  static String URL_ROOT = "https://xxx.xxx.com";
  static String URL_DEALERAPI = "https://xxx.xxxx.com";
  static init() {
    const bool inProduction = const bool.fromEnvironment("dart.vm.product");
    //测试环境
    if (!inProduction) {
      URL_ROOT = "http://api.ceshi.xxx.com";
      URL_DEALERAPI = "http://xxx.ceshi.xxxx.com";
    }
  }

  static String urlLogin = URL_DEALERAPI + "/user/login";
  static String urlHome = URL_DEALERAPI + "/user/databoard";
  static String urlContractNum = URL_DEALERAPI + "/dealtask/wait_contract_num";
}
