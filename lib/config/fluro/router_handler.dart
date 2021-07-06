import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:wechat_app/page/home.dart';
import 'package:wechat_app/page/noFound.dart';
import 'package:wechat_app/page/splash.dart';
import 'package:wechat_app/page/message/detail.dart';

//闪屏页
Handler rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SplashPage();
  },
);

//主页面
Handler homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return HomePage();
  },
);
///消息详情页
Handler messageDetailHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    String id=params["id"][0];
    return DetailPage(title:id );
  },
);
///页面丢失
Handler notFoundHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return NotFoundPage();
  },
);
