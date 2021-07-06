import 'package:flutter/material.dart';
import 'package:wechat_app/config/fluro/application.dart';
import 'package:wechat_app/config/fluro/routes.dart';
import './page/home.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  FluroRouter router=FluroRouter();
  Routes.configureRoutes(router);
  Application.router=router;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,960),
        allowFontScaling: false,
        builder: ()=>   MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    ));




  }
}
