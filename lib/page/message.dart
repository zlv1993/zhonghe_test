import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import './message/detail.dart';
import 'package:wechat_app/config/fluro/navigator_util.dart';
class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "微信",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        backgroundColor: Colors.grey[400],
        actions: [
          InkWell(
            child:Container(
              margin: EdgeInsets.only(right: 15),
              child:Icon(Icons.search_rounded,size:30,color:Colors.black45),
            ) ,
            onTap: () {
              debugPrint("点击搜索");
            },
          ),
          InkWell(
            child:Container(
              margin: EdgeInsets.only(right: 20),
              child:Icon(Icons.add_circle_outline,size:30,color:Colors.black45),
            ) ,
            onTap: () {
              debugPrint("点击添加");
            },
          )
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child:itemWidget(index) ,
            onTap: (){
                NavigatorUtil.detailPage(context,url:"/detail/${index.toString()}");
            },
          ) ;
        },
        itemCount: 50,
        itemExtent: 91,
      ),
    );
  }

  //列表里的渲染数据
  Widget itemWidget(int index) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Imagelabel(index),
              rightColumn(index),
            ],
          ),
          lineContent()
        ],
      ),
    );
  }

  //左侧头像加label
  Widget Imagelabel(int index) {
    return Container(
        height: 89,
        width: 89,
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            Center(
              child: ClipOval(
                child: Image.asset("assets/grass.jpg",
                    width: 60, height: 60, fit: BoxFit.cover),
              ),
            ),
            Positioned(
                right: 0,
                top: 5,
                child: Container(
                  height: 20,
                  width: 40,
                  child: Center(
                    child: Text(
                      "${index}",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8)),
                ))
          ],
        ));
  }

  //左侧内容
  Widget rightColumn(int index) {
    return Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                "这是标题${index}",
                style: TextStyle(color: Colors.black, fontSize: 14),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                child: Text(
                  "中午12:03",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "这里是内容",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ]));
  }

  Widget lineContent() {
    return SizedBox(
      height: 1,
      child: Row(
        children: [
          SizedBox(
            width: 90,
          ),
          Expanded(
              child: Container(
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFFdddddd))))
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey[400]);
    if (useWhiteForeground(Colors.pink[400])) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    }
  }
}
