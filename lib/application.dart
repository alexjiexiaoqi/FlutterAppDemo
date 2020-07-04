import 'package:event_bus/event_bus.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Application {
  static final String HTTPPOXY = "10.10.33.204:8888";
  static final String SN = "m1K5@BcxUn!";
  static EventBus eventBus = new EventBus();
  static GlobalKey<NavigatorState> navigatorState = new GlobalKey();
  static Router router;
  static String token;
  static dispatch(context, action, {listen: true}) {
    StoreProvider.of(context, listen: listen).dispatch(action);
  }
}
