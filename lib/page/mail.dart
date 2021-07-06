import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          box(),
          boxTwo()
        ],
      ),
    );
  }

//  box箱子
  Widget box() {
    return Container(
      width: 0.5.sw,
      height:0.5.sh,
      decoration: BoxDecoration(
        color: Colors.amber
      ),
      child:Center(
        child: Text("测试文本",
          style: TextStyle(
          fontSize: 14.sp
        ),),
      ) ,
    );
  }
  //  box箱子
  Widget boxTwo() {
    return Container(
      width: 180.w,
      height:480.h,
      decoration: BoxDecoration(
        color: Colors.greenAccent
      ),
      child:Center(
        child: Text("测试文本2",
          style: TextStyle(
              fontSize: 14
          ),),
      ) ,
    );
  }
}
