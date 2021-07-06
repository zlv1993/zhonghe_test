import 'package:flutter/material.dart';
import 'package:wechat_app/config/fluro/navigator_util.dart';
class DetailPage extends StatelessWidget {
  String title;
  DetailPage({Key key, this.title }):super(key: key);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: InkWell(
           child: Text("$title"),
           onTap: (){
             NavigatorUtil.goBackWithParams(context, "测试数据");
           },
         ),
       ),
     );
   }
}


