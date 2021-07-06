import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './application.dart';
import './routes.dart';
class NavigatorUtil{
  //返回
  static void goBack(BuildContext context){
    Application.router.pop(context);
  }
  //带参数返回
 static void goBackWithParams(BuildContext context,result){
    Application.router.pop(context,result);
 }
  // 跳转到主页面
  static void homePage(BuildContext context,{bool isReplace=true}) {
    Application.router.navigateTo(context, Routes.homeUrl, replace: isReplace);
  }
  // 跳转详情页面
  static void detailPage(BuildContext context,{String url}) {
    Application.router.navigateTo(context, url);
  }
}