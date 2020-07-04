import 'package:fluro/fluro.dart';
import 'package:usedcar2b/application.dart';
import 'package:usedcar2b/pages/Login.dart';
import 'package:usedcar2b/pages/homepage.dart';
import 'package:usedcar2b/pages/splash.dart';

//路由配置
class Routers {
  static const String Welcome = "/";
  static const String Login = "/login";
  static const String Home = "/home";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(handlerFunc: (context, params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    Application.router = router;
    router.define(Welcome,
        handler: Handler(handlerFunc: (context, params) => WelcomePage()));
    router.define(Login,
        handler: Handler(handlerFunc: (context, params) => LoginPage()));
    router.define(Home,
        handler: Handler(handlerFunc: (context, params) => HomePage()));
  }
}
