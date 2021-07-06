import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:wechat_app/config/fluro/router_handler.dart';
import 'package:wechat_app/page/noFound.dart';
class Routes{
  static String rootUrl='/';
  static String homeUrl='/home';
  static String detailRul='/detail/:id';
  static void configureRoutes(FluroRouter router){
      router.notFoundHandler=notFoundHandler;
      router.define(rootUrl, handler: rootHandler);
      router.define(homeUrl, handler: homeHandler);
      router.define(detailRul, handler: messageDetailHandler);
  }

}