import 'package:flutter/material.dart';
import './found.dart';
import './mail.dart';
import './message.dart';
import './my.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final List<BottomNavigationBarItem> bottomitems=[
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: "消息",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: "通讯录",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      label: "发现",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      label: "我",
    ),
  ];
  int _currentIndex;
  List<Widget> pages=[MessagePage(),MailPage(),FoundPage(),MyPage()];
  @override
  void initState() {
    super.initState();
    _currentIndex=0;
  } //选中的tab序号

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomitems,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}

