import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:usedcar2b/network/address.dart';
import 'package:usedcar2b/states/xin_states.dart';

import 'application.dart';
import 'common/routers.dart';
import 'common/style/style.dart';

void main() {
  runApp(MyApp());
  final router = Router();
  Routers.configureRoutes(router);
  Address.init();
}

class MyApp extends StatefulWidget {
  MyApp({Key key, this.title}) : super(key: key);
  String title;
  final store = new Store<XinStates>(appReducer,
      initialState: new XinStates(homeBroardInfo: null));

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: widget.store,
        child: FlutterEasyLoading(
            child: MaterialApp(
          navigatorKey: Application.navigatorState,
          onGenerateRoute: Application.router.generator,
          title: "商车通",
          theme: ThemeData(
              appBarTheme:
                  AppBarTheme.of(context).copyWith(color: Colors.white),
              buttonTheme: ButtonTheme.of(context)
                  .copyWith(buttonColor: AppColors.color_9AD708, height: 48)),
        )));
  }
}
