class Config {
  static bool DEBUG = true;

  static const PAGE_SIZE = 20;

  static const APP_TYPE = TYPE_USER;
  static const TYPE_USER = "user";
  static const TYPE_DRIVER = "driver";
  static bool isDriver() => APP_TYPE == TYPE_DRIVER;

  ///"user";
  ///
  /// //////////////////////////////////////常量////////////////////////////////////// ///
  static const API_TOKEN = "4d65e2a5626103f92a71867d7b49fea0";
  static const TOKEN_KEY = "token";
  static const LOCALE = "locale";
  static const ADDRESS_HISTORY = "address_istory";
  static const CURRENT_LOCATION = "current_location";
  static const GOOGLE_MAPS_KEY = "AIzaSyALRFzaNRSGprTNDa6d4G6UuP9Uoi8tGKA";

  ///手机号
  static const MOBILE = "mobile";
  static const NATIONAL = "national";
  static const PASSWORD = "password";
  static const FROM = "from";
  static get getMobiles => (mobile, national) => {"mobile": mobile, "national": national};

  static const double CAMERA_ZOOM = 16;
  static const double CAMERA_TILT = 0;
  static const double CAMERA_BEARING = 30;
}
